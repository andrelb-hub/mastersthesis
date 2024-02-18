function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
% function [residual, g1] = static_resid_g1(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = reg_model_v2_inv.static_g1_tt(T, y, x, params);
    end
    residual = reg_model_v2_inv.static_resid(T, y, x, params, false);
    g1       = reg_model_v2_inv.static_g1(T, y, x, params, false);

end
