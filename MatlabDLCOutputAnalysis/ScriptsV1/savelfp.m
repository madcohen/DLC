function [fig,jpg] = savelfp(t)
    fig=[t,'.fig'];
    saveas(gcf,fig);
    jpg=[t,'.jpg'];
    saveas(gcf,jpg);
end
