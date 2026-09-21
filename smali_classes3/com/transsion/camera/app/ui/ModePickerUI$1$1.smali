.class Lcom/transsion/camera/app/ui/ModePickerUI$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePickerUI$1;->doProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/ModePickerUI$1;

.field final synthetic val$state:Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ModePickerUI$1;Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;)V
    .registers 3

    .line 348
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1$1;->this$1:Lcom/transsion/camera/app/ui/ModePickerUI$1;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1$1;->val$state:Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1$1;->this$1:Lcom/transsion/camera/app/ui/ModePickerUI$1;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/ModePickerUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePickerUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$1$1;->val$state:Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;->showAnim:Z

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModePickerUI$UpdateArrowState;->showMinAnime:Z

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/ui/ModePickerUI;->updateModeArrowState(ZZ)V

    return-void
.end method
