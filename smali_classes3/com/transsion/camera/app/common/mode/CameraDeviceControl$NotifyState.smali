.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyState"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mNotifyCount:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;)V
    .registers 3

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method enter()V
    .registers 2

    .line 966
    iget v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mNotifyCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mNotifyCount:I

    return-void
.end method

.method getCount()I
    .registers 1

    .line 970
    iget p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mNotifyCount:I

    return p0
.end method

.method getName()Ljava/lang/String;
    .registers 1

    .line 974
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mName:Ljava/lang/String;

    return-object p0
.end method

.method reset()V
    .registers 2

    const/4 v0, 0x0

    .line 978
    iput v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$NotifyState;->mNotifyCount:I

    return-void
.end method
