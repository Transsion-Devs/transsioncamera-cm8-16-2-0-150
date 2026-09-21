.class Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDelegate:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

.field private mInitFormat:I

.field private mInitHeight:I

.field private mInitWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MotionDetectWrapper"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;)V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mDelegate:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    return-void
.end method

.method private isChanged(III)Z
    .registers 5

    .line 56
    iget v0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitWidth:I

    if-ne v0, p1, :cond_f

    iget p1, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitHeight:I

    if-ne p1, p2, :cond_f

    iget p0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitFormat:I

    if-eq p0, p3, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public detect([BIII)Z
    .registers 8

    .line 40
    invoke-direct {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->isChanged(III)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 41
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isChanged width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInitWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInitHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mInitFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->unInit()Z

    .line 45
    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->init(III)Z

    .line 47
    :cond_50
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mDelegate:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->detect([BIII)Z

    move-result p0

    return p0
.end method

.method public init(III)Z
    .registers 4

    .line 31
    iput p1, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitWidth:I

    .line 32
    iput p2, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitHeight:I

    .line 33
    iput p3, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mInitFormat:I

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mDelegate:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->init(III)Z

    move-result p0

    return p0
.end method

.method public unInit()Z
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;->mDelegate:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->unInit()Z

    move-result p0

    return p0
.end method
