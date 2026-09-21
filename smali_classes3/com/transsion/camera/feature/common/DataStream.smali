.class Lcom/transsion/camera/feature/common/DataStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/IDataStream;
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;


# static fields
.field private static final DUMP_INPUT:Z

.field private static final DUMP_PANORAMA_INPUT_PROPERTY:Ljava/lang/String; = "debug.camera.dump_panorama_input"

.field private static final DUMP_WIDE_SELFIE_INPUT_PROPERTY:Ljava/lang/String; = "debug.camera.dump_wide_selfie_input"

.field private static final PIXEL_STRIDE_2:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

.field private final mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

.field private mFormatInit:Z

.field private mFrameData:[B

.field private final mFrameDataLock:Ljava/lang/Object;

.field private final mGuardLock:Ljava/lang/Object;

.field private mHeight:I

.field private mImageFormat:I

.field private mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

.field private mStreamState:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DataStream"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 35
    const-string v0, "debug.camera.dump_panorama_input"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "debug.camera.dump_wide_selfie_input"

    .line 36
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    :goto_27
    sput-boolean v0, Lcom/transsion/camera/feature/common/DataStream;->DUMP_INPUT:Z

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x11

    .line 42
    iput v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameDataLock:Ljava/lang/Object;

    .line 57
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-void
.end method


# virtual methods
.method public createStream()V
    .registers 3

    .line 155
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createStream"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 157
    :try_start_b
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 158
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 159
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 160
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_18

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void

    :catchall_18
    move-exception p0

    .line 160
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public destroyStream()V
    .registers 3

    .line 174
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "destroyStream"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 176
    :try_start_b
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 177
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 178
    iput-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 179
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_19

    .line 180
    iget-object p0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    return-void

    :catchall_19
    move-exception p0

    .line 179
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public onPreviewFrame(Landroid/media/Image;II)V
    .registers 13

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_3
    iget-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    const/16 v2, 0x11

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    if-ne p2, v1, :cond_17

    iget v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    if-eq p3, v1, :cond_66

    goto :goto_17

    :catchall_14
    move-exception p0

    goto/16 :goto_135

    .line 64
    :cond_17
    :goto_17
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    if-ne v1, v4, :cond_26

    .line 65
    iput v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    goto :goto_2b

    :cond_26
    const v1, 0x32315659

    .line 67
    iput v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    .line 70
    :goto_2b
    iput-boolean v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFormatInit:Z

    .line 71
    iput p2, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    .line 72
    iput p3, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    .line 73
    sget-object v1, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStreamAvailable mImageFormat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/transsion/camera/feature/common/DataStream;->mHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    if-eqz v1, :cond_66

    .line 77
    iget v5, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-interface {v1, p2, p3, v5}, Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;->onStreamAvailable(III)V

    .line 81
    :cond_66
    iget-boolean v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    if-nez v1, :cond_6c

    .line 82
    monitor-exit v0

    return-void

    .line 84
    :cond_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_14

    .line 87
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 88
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    .line 92
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v6

    aget-object v4, v6, v4

    .line 93
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    .line 96
    iget v7, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    if-ne v2, v7, :cond_b0

    add-int p1, v5, v6

    add-int/2addr p1, v3

    .line 99
    iget-object v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 100
    :try_start_94
    iget-object v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    if-eqz v3, :cond_9e

    array-length v3, v3

    if-eq v3, p1, :cond_a2

    goto :goto_9e

    :catchall_9c
    move-exception p0

    goto :goto_ae

    .line 101
    :cond_9e
    :goto_9e
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    .line 104
    :cond_a2
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v0, p1, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v4, p1, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 106
    monitor-exit v2

    goto :goto_e3

    :goto_ae
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_94 .. :try_end_af} :catchall_9c

    throw p0

    .line 109
    :cond_b0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    aget-object p1, p1, v3

    .line 110
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    add-int v3, v5, v2

    add-int/2addr v3, v6

    .line 115
    iget-object v7, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameDataLock:Ljava/lang/Object;

    monitor-enter v7

    .line 116
    :try_start_c4
    iget-object v8, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    if-eqz v8, :cond_ce

    array-length v8, v8

    if-eq v8, v3, :cond_d2

    goto :goto_ce

    :catchall_cc
    move-exception p0

    goto :goto_133

    .line 117
    :cond_ce
    :goto_ce
    new-array v3, v3, [B

    iput-object v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    .line 120
    :cond_d2
    iget-object v3, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v0, v3, v1, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-virtual {v4, v0, v5, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    add-int/2addr v5, v6

    invoke-virtual {p1, v0, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 123
    monitor-exit v7
    :try_end_e3
    .catchall {:try_start_c4 .. :try_end_e3} :catchall_cc

    .line 126
    :goto_e3
    sget-boolean p1, Lcom/transsion/camera/feature/common/DataStream;->DUMP_INPUT:Z

    if-eqz p1, :cond_ee

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    iget v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-static {p1, p2, p3, v0}, Lcom/transsion/camera/utils/YuvUtils;->dumpYuv([BIII)V

    .line 130
    :cond_ee
    iget-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter p1

    .line 131
    :try_start_f1
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    if-eqz v0, :cond_12f

    .line 132
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataAvailable width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    iget-object v1, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameDataLock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/transsion/camera/feature/common/DataStream;->mFrameData:[B

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget p0, p0, Lcom/transsion/camera/feature/common/DataStream;->mImageFormat:I

    invoke-interface {v0, v1, p2, p3, p0}, Lcom/transsion/camera/feature/common/IDataStream$IDataListener;->onDataAvailable(Landroid/util/Pair;III)V

    goto :goto_12f

    :catchall_12d
    move-exception p0

    goto :goto_131

    .line 136
    :cond_12f
    :goto_12f
    monitor-exit p1

    return-void

    :goto_131
    monitor-exit p1
    :try_end_132
    .catchall {:try_start_f1 .. :try_end_132} :catchall_12d

    throw p0

    .line 123
    :goto_133
    :try_start_133
    monitor-exit v7
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_cc

    throw p0

    .line 84
    :goto_135
    :try_start_135
    monitor-exit v0
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_14

    throw p0
.end method

.method public setDataListener(Lcom/transsion/camera/feature/common/IDataStream$IDataListener;)V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mDataListener:Lcom/transsion/camera/feature/common/IDataStream$IDataListener;

    .line 143
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setStreamListener(Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_3
    iput-object p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamListener:Lcom/transsion/camera/feature/common/IDataStream$IStreamListener;

    .line 150
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public updateState(Z)V
    .registers 5

    .line 166
    sget-object v0, Lcom/transsion/camera/feature/common/DataStream;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateState state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/common/DataStream;->mGuardLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_1a
    iput-boolean p1, p0, Lcom/transsion/camera/feature/common/DataStream;->mStreamState:Z

    .line 169
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw p0
.end method
