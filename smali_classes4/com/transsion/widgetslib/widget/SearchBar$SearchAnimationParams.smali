.class public final Lcom/transsion/widgetslib/widget/SearchBar$SearchAnimationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/SearchBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchAnimationParams"
.end annotation


# static fields
.field public static final ENTER_BACK_VIEW_ALPHA_DELAY_DURATION:I = 0x96

.field public static final ENTER_BACK_VIEW_ALPHA_DURATION:I = 0xfa

.field public static final ENTER_DURATION:I = 0x190

.field public static final ENTER_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final EXIT_BACK_VIEW_ALPHA_DURATION:I = 0x64

.field public static final EXIT_DURATION:I = 0x15e

.field public static final EXIT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 985
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/widget/SearchBar$SearchAnimationParams;->ENTER_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 986
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/widgetslib/widget/SearchBar$SearchAnimationParams;->EXIT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
