.class Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$2;
.super Lcom/transsion/campostalgo/ITZCaptureCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$2;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-direct {p0}, Lcom/transsion/campostalgo/ITZCaptureCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTZCapAllDone()Z
    .registers 3

    .line 310
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onCaptureAllDone: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$2;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCallback:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    if-eqz p0, :cond_12

    .line 312
    invoke-interface {p0}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;->onCaptureAllDone()V

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public onTZCaptureCompleted(Landroid/os/ParcelFileDescriptor;JII)Z
    .registers 9

    .line 279
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTZCaptureCompleted, mCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$2;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    iget-object v2, v2, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCallback:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", parcelFileDescriptor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", custom2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p4, :cond_58

    .line 285
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p5, 0x21

    if-lt p4, p5, :cond_50

    .line 286
    iget-object p4, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$2;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p4, p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$mgetJpegData(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;Landroid/os/ParcelFileDescriptor;)[B

    move-result-object p1

    .line 290
    new-instance p4, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/camera/app/common/tzservice/TZEvent;-><init>([BJ)V

    goto :goto_5e

    .line 288
    :cond_50
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "need adapter android platform"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 292
    :cond_58
    new-instance p4, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    const/4 p1, 0x0

    invoke-direct {p4, p1, p2, p3}, Lcom/transsion/camera/app/common/tzservice/TZEvent;-><init>([BJ)V

    .line 294
    :goto_5e
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$2;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCallback:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    if-eqz p0, :cond_67

    .line 295
    invoke-interface {p0, p4}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;->onCompleted(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V

    :cond_67
    const/4 p0, 0x1

    return p0
.end method

.method public onTZSGetBatteryLevel()I
    .registers 4

    .line 319
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getBatteryCapacity()I

    move-result p0

    .line 320
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTZSGetBatteryLevel: batteryCapacity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public onTZSGetPackageName()Ljava/lang/String;
    .registers 4

    .line 302
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "onTZSGetPackageName: start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getTopPackageName()Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTZSGetPackageName: end packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public onTZSGetUserID()I
    .registers 4

    .line 326
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getSystemUserID()I

    move-result p0

    .line 327
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTZSGetUserID: userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method
