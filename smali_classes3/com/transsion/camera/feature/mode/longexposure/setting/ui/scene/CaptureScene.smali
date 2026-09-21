.class public Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mDrawableId:I

.field private final mTitleId:I

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->mTitleId:I

    .line 24
    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->mDrawableId:I

    .line 25
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDrawableId()I
    .registers 1

    .line 33
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->mDrawableId:I

    return p0
.end method

.method public getTitleId()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->mTitleId:I

    return p0
.end method

.method public getValue()Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;->mValue:Ljava/lang/String;

    return-object p0
.end method
