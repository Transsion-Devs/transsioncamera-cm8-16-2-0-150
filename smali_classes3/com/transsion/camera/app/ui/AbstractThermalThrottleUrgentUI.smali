.class public abstract Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI;


# instance fields
.field protected mConfirmView:Landroid/view/View;

.field protected mOrientation:I

.field private mThermalThrottleOperator:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI$IThermalThrottleOperator;


# direct methods
.method public static synthetic $r8$lambda$905Q2BVSFFPOm9b3S9_j1cjMVx8(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;->lambda$setupView$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$setupView$0(Landroid/view/View;)V
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;->mThermalThrottleOperator:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI$IThermalThrottleOperator;

    if-eqz p0, :cond_7

    .line 34
    invoke-interface {p0}, Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI$IThermalThrottleOperator;->performExit()V

    :cond_7
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;->mOrientation:I

    return-void
.end method

.method public setThermalThrottleOperator(Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI$IThermalThrottleOperator;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;->mThermalThrottleOperator:Lcom/transsion/camera/app/ui/IThermalThrottleUrgentUI$IThermalThrottleOperator;

    return-void
.end method

.method public setupView()V
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;->mConfirmView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 32
    new-instance v1, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method
