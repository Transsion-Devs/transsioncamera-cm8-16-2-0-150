.class public abstract Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "UIInflateStage"
.end annotation


# instance fields
.field private mIsLast:Z

.field private final mNext:Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method public static synthetic $r8$lambda$8l5_xq20mhPtA4ZPE3xYWB5mWCs(Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->lambda$deliver$0()V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V
    .registers 4

    const/4 v0, 0x0

    .line 5931
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;Z)V
    .registers 4

    .line 5934
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5935
    iput-object p2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->mNext:Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;

    .line 5936
    iput-boolean p3, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->mIsLast:Z

    return-void
.end method

.method private synthetic lambda$deliver$0()V
    .registers 2

    .line 5945
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->mNext:Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;

    if-eqz v0, :cond_8

    .line 5946
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->process()V

    return-void

    .line 5948
    :cond_8
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->mIsLast:Z

    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$mfinishUIInflateStage(Lcom/transsion/camera/app/ui/BaseAppUI;Z)V

    return-void
.end method


# virtual methods
.method public final deliver()V
    .registers 3

    .line 5944
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$fgetmUIHandler(Lcom/transsion/camera/app/ui/BaseAppUI;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public process()V
    .registers 1

    .line 5940
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI$UIInflateStage;->deliver()V

    return-void
.end method
