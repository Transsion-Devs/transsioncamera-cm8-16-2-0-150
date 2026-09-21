.class Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/tzservice/TZService$ICaptureJpegCallback;


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

    .line 217
    iput-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getJpegData(Landroid/os/ParcelFileDescriptor;)[B
    .registers 9

    const/4 v0, 0x0

    .line 252
    :try_start_1
    invoke-static {p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/ParcelFileDescriptor;)Landroid/os/SharedMemory;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_4b

    .line 253
    :try_start_5
    invoke-virtual {v1}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    .line 255
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getJpegData: remaining = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-gtz v3, :cond_4f

    .line 258
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getJpegData: Invalid data size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_4d

    .line 270
    :try_start_3f
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4b

    if-eqz p1, :cond_4a

    :goto_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48
    .catch Landroid/system/ErrnoException; {:try_start_44 .. :try_end_47} :catch_48

    return-object v0

    :catch_48
    move-exception p0

    goto :goto_8a

    :cond_4a
    return-object v0

    :catchall_4b
    move-exception p0

    goto :goto_7f

    :catchall_4d
    move-exception p0

    goto :goto_74

    .line 262
    :cond_4f
    :try_start_4f
    new-array v0, v3, [B

    .line 263
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 265
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;->validateJpegData([B)Z

    move-result p0

    if-nez p0, :cond_64

    .line 266
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v2, "getJpegData: JPEG data validation failed"

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_6d

    .line 268
    :cond_64
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v2, "getJpegData: JPEG data validation passed"

    invoke-static {p0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_4f .. :try_end_6d} :catchall_4d

    .line 270
    :goto_6d
    :try_start_6d
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_4b

    if-eqz p1, :cond_73

    goto :goto_44

    :cond_73
    return-object v0

    :goto_74
    if-eqz v1, :cond_7e

    .line 252
    :try_start_76
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_7e

    :catchall_7a
    move-exception v1

    :try_start_7b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7e
    :goto_7e
    throw p0
    :try_end_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_4b

    :goto_7f
    if-eqz p1, :cond_89

    :try_start_81
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception p1

    :try_start_86
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_89
    :goto_89
    throw p0
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8a} :catch_48
    .catch Landroid/system/ErrnoException; {:try_start_86 .. :try_end_8a} :catch_48

    .line 271
    :goto_8a
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "getJpegData: Exception occurred"

    invoke-static {p1, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private validateJpegData([B)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p1, :cond_62

    .line 277
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_8

    goto :goto_62

    .line 283
    :cond_8
    aget-byte v0, p1, p0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    const/4 v2, 0x1

    .line 284
    aget-byte v3, p1, v2

    and-int/2addr v3, v1

    if-ne v0, v1, :cond_36

    const/16 v4, 0xd8

    if-eq v3, v4, :cond_18

    goto :goto_36

    .line 291
    :cond_18
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    .line 292
    array-length v3, p1

    sub-int/2addr v3, v2

    aget-byte p1, p1, v3

    and-int/2addr p1, v1

    if-ne v0, v1, :cond_2b

    const/16 v0, 0xd9

    if-eq p1, v0, :cond_2a

    goto :goto_2b

    :cond_2a
    return v2

    .line 294
    :cond_2b
    :goto_2b
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string/jumbo v0, "validateJpegData: Invalid JPEG footer, expected 0xFF 0xD9"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 286
    :cond_36
    :goto_36
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateJpegData: Invalid JPEG header, expected 0xFF 0xD8, got 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%02X %02X"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 278
    :cond_62
    :goto_62
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateJpegData: Data is null or too small, length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_75

    move p1, p0

    goto :goto_76

    .line 279
    :cond_75
    array-length p1, p1

    :goto_76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public getAppUserID()I
    .registers 4

    .line 244
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getAppUserID()I

    move-result p0

    .line 245
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTZSGetAppUserID: userID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method public onTZCaptureCompleted(Landroid/os/ParcelFileDescriptor;JII)Z
    .registers 12

    .line 220
    invoke-static {}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTZCaptureCompleted: timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", custom2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTZAIDLService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {v2}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fgetmTZAIDLService(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/feature/tzservice/TZService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mTZServiceCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {v2}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fgetmTZServiceCallback(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", parcelFileDescriptor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_87

    .line 225
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;->getJpegData(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object p1

    if-nez p4, :cond_5e

    .line 227
    new-instance p5, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/tzservice/TZEvent;-><init>([BJI)V

    goto :goto_74

    :cond_5e
    const/4 p1, 0x2

    if-ne p4, p1, :cond_6c

    .line 229
    new-instance v0, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    const/4 v1, 0x0

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/tzservice/TZEvent;-><init>([BJII)V

    move-object p5, v0

    goto :goto_74

    :cond_6c
    move-wide v2, p2

    move v4, p4

    .line 231
    new-instance p5, Lcom/transsion/camera/app/common/tzservice/TZEvent;

    const/4 p1, 0x0

    invoke-direct {p5, p1, v2, v3, v4}, Lcom/transsion/camera/app/common/tzservice/TZEvent;-><init>([BJI)V

    .line 236
    :goto_74
    iget-object p1, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {p1}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fgetmTZServiceCallback(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    move-result-object p1

    if-eqz p1, :cond_85

    .line 237
    iget-object p0, p0, Lcom/transsion/camera/feature/tzservice/TZServiceProxy$2;->this$0:Lcom/transsion/camera/feature/tzservice/TZServiceProxy;

    invoke-static {p0}, Lcom/transsion/camera/feature/tzservice/TZServiceProxy;->-$$Nest$fgetmTZServiceCallback(Lcom/transsion/camera/feature/tzservice/TZServiceProxy;)Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;

    move-result-object p0

    invoke-interface {p0, p5}, Lcom/transsion/camera/app/common/tzservice/ITZService$ITZServiceCallback;->onCaptureCompleted(Lcom/transsion/camera/app/common/tzservice/TZEvent;)V

    :cond_85
    const/4 p0, 0x1

    return p0

    .line 234
    :cond_87
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "need adapter android platform"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
