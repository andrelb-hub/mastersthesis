function [residual, g1, g2, g3] = static_resid_g1_g2_g3(T, y, x, params, T_flag)
% function [residual, g1, g2, g3] = static_resid_g1_g2_g3(T, y, x, params, T_flag)
%
% Wrapper function automatically created by Dynare
%

    if T_flag
        T = reg_model_v2_inv.static_g3_tt(T, y, x, params);
    end
    [residual, g1, g2] = reg_model_v2_inv.static_resid_g1_g2(T, y, x, params, false);
    g3       = reg_model_v2_inv.static_g3(T, y, x, params, false);

end
