.class public final synthetic Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;

    return-void
.end method


# virtual methods
.method public final onTransfer(Z)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI5;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/autoscenedetection/QuickVideoUI;->updateLowLight(Z)V

    return-void
.end method
