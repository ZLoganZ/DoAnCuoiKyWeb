<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head> </head>
  <body>
    <!--begin of menu-->
    <nav
      class="navbar navbar-expand-md"
      style="
        position: fixed;
        top: 0;
        width: 100%;
        z-index: 100000;
        background: rgba(120, 130, 140, 0.7);
        backdrop-filter: opacity(90%);
        font-family: 'Brush Script MT', cursive !important;
      "
    >
      <div class="container">
        <a
          class="navbar-brand"
          href="home"
          style="
            color: pink !important;
            font-weight: Bold !important;
            font-size: 20px !important;
            background-image: linear-gradient(
              to right,
              #ef5350,
              #f48fb1,
              #7e57c2,
              #2196f3,
              #26c6da,
              #43a047,
              #eeff41,
              #f9a825,
              #ff5722
            );
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
          "
          ><img
            src="https://lh3.googleusercontent.com/fife/AAbDypDaUfJ_ow4Ea__za2kuWA5erVVlpQtDTyAK5JfkHebXPFgWrfH7yT_IIrgA6O_Gu98WzZt09W26UZrQ4hIucmuO3C2BHFjgqiPsYYv6Ijt4Vmq6IIxDA1uMn_yuoEH2Vy4kroXzF0CdkP1jB0cRIW-fhB8Mn5xGeBIpA4mn_owMpWFZTtCocUI354dgyCKMhkYeu0BK02a8iPqKxZD3TCbfGpEcopSZ61LGembDJWwl724JsTrMYEfiQ-dtRxiYua6-yNYY40Xj_29ADa2gE5Wi4BvNzmEJZ7weY9gw2Ni8OrA2XfYvXWX2dzdPFxlRBKwFaz3RkYN0nW7TCob-XKNJfbEz3-OMQ7gRa5N7VLxNoot7qZw5MlKuins_OKEuRn7bqZhJgB2f25baxWeStbbbnt3pRDmRZ61vxeFwTqRO1LvAhhIHG994fnOwkEnkuJ3s56gvNKffzBekRb6ORRbXjwEeBsBTg2AdzKzkams7yb2xtFfCBB0_jo5wP3KdfYRsDhjpquaxP6EzbIiNTD9s7KOkwPllKxRWaMPIvaVRaweY2jl6fXf_-8qV0HUXVgvfq20WekAxcYBQThJxlck0um7nd3IYyrZwz05WJxPT9-Cs1BvIEKYNAJ9TIMEIdoK-Ua5xQBHajEs5IZY9eQNKsQqabtYRs-WL6qqyChXYKlmLURijAlzM9x1Gap9gI_Q9Rkr2I217kSTrZ_0v5e5M8KBNLgWt6CN9eJk377n6_YBFeu0FgfRn27iSA3ycVRqEjizkpOvSojL9NrRhFcEiL96xnkkAq0zTvozDRv4gvKu3-FP0sw_W0RtwHd3kWvInBm8EWj3iMqePcKOXOMdfveV9qDdzshCKWMkMvvxMvolPgwtAWeWmdzpAcHEyLiycoGleNQrEffaDyb9pp6voQW9JmW1Bnnb8P-x_ho4ZRhiyNbiLyh8QPueoyUafhOv9yf3EBg-sW-74ZBiCENRXO7mD3hJTaOfDwAXiO_oTTEnmZCYuW1BX9SY82Gt9pa9vaMxU07a83-Ubc_UeCOHJxIBZzLvgP5Vn48zQ0-qpuAY0pDc14PXF_iJux6YEW4ahztNg6Wvmg2FWe7F1ivWtc3lQx2hWtjuOetr60AzhLb7Z6HDNzubGj7jICscEFK3osmCCPBnNXYZuHR_R4x6BDeRVCjifdNeiUmEsko6P-_wBnz2ojPR4lPl9UwEs3BJ_v7nffGBtZLM3Rlr3cQSr77E24P3z4TkKJbO1R3QNODcv8zvof28HF3iHepl8vCrf9GSMOYQ9CGwmm86nOO9SBme9sahTdPBR5QryjG2XZPyHlSb5cLXQvP_bexOKw-dFlFHyCiZyH-C2FxYEAYjqNDQ_jUpznyELjn49I389aaCDPNTM3D2NEmbtRsl22S2WminieFDgT8ubnB0JmexMKdlRFYjGnbMx7_nlzvnd3B5dSERTow9ous8Q6XPGTO413x1BQIFMzRaE31iqDNoO15toviMFXPyfycrryYgOIRvKKfjjm_prmxsDui3wVf0naN1J2AeHxCuXeOIC0e5JJ8dyOlyz14Z-Sc5F3shD-k0pyAnXFwXY-6i_JIM16hFrx7C4puOoiw2gGmpZFrBy6BhGf_htdh5FZXGHmAt5pCcvYf7rhDRrO2yF3mib6U2z96il3w=w1366-h925"
        /></a>
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarsExampleDefault"
          aria-controls="navbarsExampleDefault"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div
          class="collapse navbar-collapse justify-content-end"
          id="navbarsExampleDefault"
          style="font-size: 18px !important"
        >
          <ul class="navbar-nav m-auto" style="margin: 10px 0 !important">
            <li class="nav-item">
              <a class="nav-link" style="color: black !important" href="home"
                >Home</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" style="color: black !important" href="shop"
                >Shop</a
              >
            </li>

            <%--
            <c:if test="${sessionScope.acc.isSell == 1}">
              <li class="nav-item">
                <a
                  class="nav-link"
                  style="color: black !important"
                  href="manager"
                  >Manager Product</a
                >
              </li>
            </c:if>
            --%>
            <c:if test="${sessionScope.acc != null}">
              <c:if test="${sessionScope.acc.isAdmin == 0}">
                <li class="nav-item">
                  <a
                    class="nav-link"
                    style="
                      color: rgb(255, 0, 0) !important;
                      font-weight: Bold;
                    "
                    href="#"
                    >Hello ${sessionScope.acc.name}</a
                  >
                </li>
              </c:if>
              <c:if test="${sessionScope.acc.isAdmin == 1}">
                <li class="nav-item">
                  <a
                    class="nav-link"
                    style="
                      color: rgb(255, 0, 0) !important;
                      font-weight: Bold;
                    "
                    href="admin"
                    >ADMIN ${sessionScope.acc.name}</a
                  >
                </li>
              </c:if>
              <li class="nav-item">
                <a
                  class="nav-link"
                  style="color: rgb(255, 0, 0) !important; font-weight: Bold"
                  href="logout"
                  >Logout</a
                >
              </li>
            </c:if>
            <c:if test="${sessionScope.acc == null}">
              <li class="nav-item">
                <a
                  class="nav-link"
                  style="color: rgb(255, 0, 0) !important"
                  href="login"
                  >Sign in</a
                >
              </li>
            </c:if>
            <c:if test="${sessionScope.acc == null}">
              <li class="nav-item">
                <a
                  class="nav-link"
                  style="color: rgb(255, 0, 0) !important"
                  href="signup"
                  >Sign up</a
                >
              </li>
            </c:if>
            <c:if test="${sessionScope.acc != null}">
              <li class="nav-item">
                <a
                  class="nav-link"
                  style="color: black !important"
                  href="editProfile"
                  >Edit Profile</a
                >
              </li>
            </c:if>
            <%--
            <c:if test="${sessionScope.acc.isAdmin == 1}">
              <li class="nav-item">
                <a class="nav-link" href="statistic">Statistic</a>
              </li>
            </c:if>
            --%>
          </ul>

          <form action="search" method="post" class="form-inline my-2 my-lg-0">
            <a
              class="btn btn-success btn-sm ml-3"
              href="managerCart"
              style="background-color: black !important; border-radius: 7px !important;"
            >
              <i class="fa fa-shopping-cart"></i>
              <span style="font-size: 14px">Cart</span>
              <b
                ><span
                  id="amountCart"
                  class="badge badge-light"
                  style="
                    color: black;
                    font-size: 12px;
                    border-radius: 50% !important;
                  "
                ></span
              ></b>
            </a>
          </form>
        </div>
      </div>
    </nav>
  </body>
</html>

<!--end of menu-->
