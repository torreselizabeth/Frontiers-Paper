%From matlab central
function maximize(hFig)
% Try different strategies to maximize the figure window
% If no figure number or handle is given, gcf will be used.
%
% The last option that will be tried is the ugly solution of changing the
% position to the screensize (but it does check for a multiple monitor set
% up, except on Octave) and adds a margin to avoid overlap with the
% taskbar.
%
%inpired by/copied from:
%http://undocumentedmatlab.com/blog/minimize-maximize-figure-window
%http://www.mathworks.com/matlabcentral/fileexchange/25471-maximize
%
% Matlab: should work on all releases (tested on R2017b and R2012b)
% Octave: tested on 4.2.1 (java recommended)
% OS:     written on Windows 10 (64bit), Octave tested on a virtual (32bit)
%         Ubuntu 16.04 LTS, should work for Mac
%
% Version: 1.1
% Date:    2017-11-04
% Author:  H.J. Wisselink
% Email=  'h_j_wisselink*alumnus_utwente_nl';
% Real_email = regexprep(Email,{'*','_'},{'@','.'})

%Parse input
if nargin < 1
    hFig = gcf;
end
if isa(hFig,'matlab.ui.Figure')
    %Convert the figure handle object to a number
    hFig=get(hFig,'Number');
end
% At this point hFig is either the figure number, or the handle in double
% format (for old releases of Matlab and for Octave). Both should be
% equivalent. If this isn't true in your specific use case, please contact
% me.

try
    %The JavaFrame solution may be removed at some point in the future,
    %although Mathworks is telling us this for years. This should work
    %regardless of OS.
    option1(hFig)
    failed=false;
catch
    failed=true;
end
if failed
    try
        %Uses alt-space followed by X hotkeys, so this is OS-specific. It
        %works on Windows and on Ubuntu (so I will assume it works on all
        %Linux distributions), but apparently not on Mac.
        %Note: on slower machines (like the VM Ubuntu), the key presses
        %might not have enough time to be processed. To cover this, a check
        %is run if the figure covers at least 70% of the screen.
        if ~ismac
            PercentOfScreenCoveredCritrerion=70;
            option2(hFig,PercentOfScreenCoveredCritrerion)
            failed=false;
        else
            error('trigger error if Mac')
        end
    catch
        failed=true;
    end
end
if failed
    try
        %'margins' is either in fractions or in pixels. If there is 1
        %fraction, all values are assumed to be fractions
        %Syntax: margin=[left bottom right top]
        %margins=[0.045 0.045 0.025 0.09];
        margins=[60 45 10 90];
        option_last(hFig,margins)
        failed=false;
    catch ME
        failed=true;
    end
end
% The 'option_last' script should always work, so rethrow the
% MessageException if it failed.
if failed
    rethrow(ME)
end

%%% nested functions for the different options:
    function option1(hFig)
        %Works on most Matlab releases (tested on 2012b and 2017b)
        w=warning('off','all');
        drawnow % Required to avoid Java errors
        jFig = get(hFig, 'JavaFrame');
        jFig.setMaximized(true);
        warning(w);
        drawnow,pause(0.0001);%give Matlab time to refresh
    end

    function option2(hFig,PercentOfScreenCoveredCritrerion)
        %Uses the alt-space followed by X to maximize
        %This hotkey combination works on Windows (tested on W10, but I
        %assume most Windows versions will have this). It also seems to
        %work on Ubuntu, but based on a Google search, I expect it not to
        %work on Mac.
        isOctave = exist('OCTAVE_VERSION', 'builtin') ~= 0;
        
        if isOctave
            %Octave has a different syntax for calling Java (and the key
            %IDs need to be hard-coded, which they shouldn't be, as they
            %may be different from keyboard to keyboard).
            hardcoded.VK_ALT=18;
            hardcoded.VK_SPACE=32;
            hardcoded.VK_X=88;
            
            figure(hFig),drawnow,pause(0.1)
            old_setting=get(hFig,'Visible');%just in case it is set to off
            set(hFig,'Visible','off');
            drawnow,pause(0.1)
            set(hFig,'Visible','on');
            drawnow,pause(0.1)
            robot = javaObject('java.awt.Robot');
            javaMethod('keyPress',robot,hardcoded.VK_ALT);     %// send ALT
            javaMethod('keyPress',robot,hardcoded.VK_SPACE);   %// send SPACE
            javaMethod('keyRelease',robot,hardcoded.VK_SPACE); %// release SPACE
            javaMethod('keyRelease',robot,hardcoded.VK_ALT);   %// release ALT
            drawnow,pause(0.5)
            javaMethod('keyPress',robot,hardcoded.VK_X);       %// send X
            drawnow,pause(0.5)
            javaMethod('keyRelease',robot,hardcoded.VK_X);     %// release X
            drawnow,pause(0.5)
            if strcmpi(old_setting,'off')
                set(hFig,'Visible',old_setting);%reset setting
            end
        else
            figure(hFig)                                        %// make it the current figure
            robot = java.awt.Robot;
            robot.keyPress(java.awt.event.KeyEvent.VK_ALT);     %// send ALT
            robot.keyPress(java.awt.event.KeyEvent.VK_SPACE);   %// send SPACE
            robot.keyRelease(java.awt.event.KeyEvent.VK_SPACE); %// release SPACE
            robot.keyRelease(java.awt.event.KeyEvent.VK_ALT);   %// release ALT
            robot.keyPress(java.awt.event.KeyEvent.VK_X);       %// send X
            robot.keyRelease(java.awt.event.KeyEvent.VK_X);     %// release X
        end
        %check if maximization failed
        screen=get(0,'screensize');
        unit_changed=false;
        if ~strcmp(get(hFig,'Units'),get(0,'Units'))
            old_units=get(hFig,'Units');
            set(hFig,'Units',get(0,'Units'))
            unit_changed=true;
        end
        drawnow,pause(0.5),figpos=get(hFig,'Position');
        if unit_changed,set(hFig,'Units',old_units);end
        covered=100*prod(figpos([3 4]))/prod(screen([3 4]));
        if covered < PercentOfScreenCoveredCritrerion
            %fprintf('%.0f%% of screen covered\n',covered)
            error('failed')
        end
    end

    function option_last(hFig,margins)
        % Get the screen size and set the figure size to the screen size
        % minus a small margin.
        % Very ugly, but it should work on all releases of Matlab (and
        % possibly also all releases of Octave)
        
        %get the size of the screen(s)
        dual=get(0,'MonitorPositions');%only returns main monitor in Octave
        if size(dual,1)>1%multiple monitors
            %Find out which monitor the figure is currently on and use that
            %monitor
            pos=get(hFig,'Position');
            t=zeros(size(dual,1),1);
            for monitor=1:size(dual,1)
                current=dual(monitor,:);
                if (pos(1)>=current(1)) && (pos(1)<(current(1)+current(3))) &&...
                        (pos(2)>=current(2)) && (pos(2)<(current(2)+current(4)))
                    t(monitor)=1;
                end
            end
            % There should be only one, but just in case of a race
            % condition, choose the first. In case of no results (shouldn't
            % happen either), select the main monitor
            t2=find(t,1,'first');if isempty(t2),t2=1;end
            dual=dual(t2,:);
        end
        newpos=zeros(1,4);
        if any(margins~=round(margins))
            %fractions
            newpos(1)=dual(1)+margins(1)*dual(3);%corner coordinate + margin
            newpos(2)=dual(2)+margins(2)*dual(4);%corner coordinate + margin
            newpos(3)=dual(3)*(1-(margins(1)+margins(3)));
            newpos(4)=dual(4)*(1-(margins(2)+margins(4)));
        else
            %pixels
            newpos(1)=dual(1)+margins(1);
            newpos(2)=dual(2)+margins(2);
            newpos(3)=dual(3)-(margins(1)+margins(3));
            newpos(4)=dual(4)-(margins(2)+margins(4));
        end
        newpos=round(newpos);
        set(hFig,'Position',newpos)
    end
end