.class Lcom/transsion/camera/feature/tzservice/TZServiceProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/tzservice/TZService$ICaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/tzservice/TZServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$1;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppUserID()I
    .registers 4

    .line 204
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getAppUserID()I

    move-result p0

    .line 205
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppUserID: userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public getBatteryLevel()I
    .registers 4

    .line 197
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getBatteryCapacity()I

    move-result p0

    .line 198
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryLevel: batteryCapacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 4

    .line 181
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getTopPackageName()Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageName: packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSystemUserID()I
    .registers 4

    .line 211
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getSystemUserID()I

    move-result p0

    .line 212
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemUserID: userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public onCaptureAllDone()Z
    .registers 3

    .line 188
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureAllDone: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$1;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fgetmTZServiceCallback(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$1;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fgetmTZServiceCallback(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;->onCaptureAllDone()V

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method
