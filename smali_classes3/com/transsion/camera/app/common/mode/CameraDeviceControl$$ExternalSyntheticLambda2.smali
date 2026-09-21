.class public final synthetic Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$$ExternalSyntheticLambda2;->f$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->$r8$lambda$Ka4ENFngXe925gWgPmdN2TrIJ90(Lcom/transsion/camera/app/common/mode/CameraDeviceControl$ICommandCallback;)V

    return-void
.end method
