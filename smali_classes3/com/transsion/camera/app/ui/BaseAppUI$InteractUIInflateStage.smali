.class Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;
.super Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteractUIInflateStage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V
    .registers 3

    .line 5819
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 5820
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    return-void
.end method


# virtual methods
.method public process()V
    .registers 3

    .line 5825
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoInflateInteractUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 5826
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdateInteractUIList(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 5827
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$InteractUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mUIManagerSetup:Z

    .line 5828
    invoke-super {p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->process()V

    return-void
.end method
