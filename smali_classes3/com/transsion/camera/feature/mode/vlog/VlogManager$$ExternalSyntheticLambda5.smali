.class public final synthetic Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/vlog/VlogManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/vlog/VlogManager;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    return-void
.end method


# virtual methods
.method public final notifyCameraOperateAction(I)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/VlogManager$$ExternalSyntheticLambda5;->f$0:Lcom/transsion/camera/feature/mode/vlog/VlogManager;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/VlogManager;->notifyActionToUI(I)V

    return-void
.end method
