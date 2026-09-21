.class public Lcom/transsion/widgetslib/view/interpolators/OSEaseInOutQuadCurveInterpolator;
.super Lcom/transsion/widgetscore/utils/EaseCubicInterpolator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 7
    invoke-direct {p0, v2, v0, v2, v1}, Lcom/transsion/widgetscore/utils/EaseCubicInterpolator;-><init>(FFFF)V

    return-void
.end method
