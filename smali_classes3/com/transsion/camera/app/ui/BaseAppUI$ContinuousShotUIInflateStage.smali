.class Lcom/transsion/camera/app/ui/BaseAppUI$ContinuousShotUIInflateStage;
.super Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinuousShotUIInflateStage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;Z)V
    .registers 4

    .line 5915
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ContinuousShotUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    .line 5916
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;Z)V

    return-void
.end method


# virtual methods
.method public process()V
    .registers 2

    .line 5921
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$ContinuousShotUIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->doLoadContinuousShotUIManager()V

    .line 5922
    invoke-super {p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->process()V

    return-void
.end method
