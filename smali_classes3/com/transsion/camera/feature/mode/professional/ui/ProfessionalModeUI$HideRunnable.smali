.class Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideRunnable"
.end annotation


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSendNotify:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)V
    .registers 3

    .line 1410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1411
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1416
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;

    if-eqz v0, :cond_1d

    const/4 v1, 0x0

    .line 1418
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->setGraduationViewEnable(Z)V

    .line 1419
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;->mIsSendNotify:Z

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$mhideSeekBar(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;ZZ)V

    .line 1420
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;->-$$Nest$fgetmSettingBarRootUI(Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI;)Lcom/transsion/camera/app/ui/widget/RotateLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    return-void
.end method

.method public setSendNotify(Z)Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;
    .registers 2

    .line 1425
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/ProfessionalModeUI$HideRunnable;->mIsSendNotify:Z

    return-object p0
.end method
