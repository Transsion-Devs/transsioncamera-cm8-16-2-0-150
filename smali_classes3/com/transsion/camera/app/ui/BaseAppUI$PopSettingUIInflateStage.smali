.class Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;
.super Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopSettingUIInflateStage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V
    .registers 3

    .line 5769
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 5770
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    return-void
.end method


# virtual methods
.method public process()V
    .registers 2

    .line 5775
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoInflatePopSettingUI(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 5776
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$PopSettingUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mdoUpdatePopSettingUIList(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    .line 5777
    invoke-super {p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->process()V

    return-void
.end method
