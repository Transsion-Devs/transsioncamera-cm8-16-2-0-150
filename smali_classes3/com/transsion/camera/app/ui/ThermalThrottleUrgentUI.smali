.class public Lcom/transsion/camera/app/ui/ThermalThrottleUrgentUI;
.super Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;-><init>()V

    return-void
.end method


# virtual methods
.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 4

    .line 23
    sget v0, Lcom/transsion/camera/R$layout;->warning_dialog_high:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    sget p1, Lcom/transsion/camera/R$id;->id_high_temperature_confirm:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractThermalThrottleUrgentUI;->mConfirmView:Landroid/view/View;

    return-void
.end method
