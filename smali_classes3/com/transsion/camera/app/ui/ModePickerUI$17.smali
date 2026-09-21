.class Lcom/transsion/camera/app/ui/ModePickerUI$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ModePickerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePickerUI;


# direct methods
.method public static synthetic $r8$lambda$KkPYLjZ1UoFmi8ERd5Ia4gm-3co(Lcom/transsion/camera/app/ui/ModePickerUI$17;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModePickerUI$17;->lambda$onTransfer$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI;)V
    .registers 2

    .line 2963
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$17;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onTransfer$0()V
    .registers 1

    .line 2971
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$17;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->ringScreenLightUpdateUI()V

    return-void
.end method


# virtual methods
.method public onTransfer(Z)V
    .registers 4

    .line 2966
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$17;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-boolean v1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    if-eq p1, v1, :cond_20

    .line 2967
    iput-boolean p1, v0, Lcom/transsion/camera/app/ui/ModePickerUI;->mOldValue:Z

    .line 2968
    invoke-static {v0}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_20

    .line 2969
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$17;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePickerUI;->-$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/ModePickerUI;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 2970
    new-instance v0, Lcom/transsion/camera/app/ui/ModePickerUI$17$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/ModePickerUI$17$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModePickerUI$17;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_20
    return-void
.end method
