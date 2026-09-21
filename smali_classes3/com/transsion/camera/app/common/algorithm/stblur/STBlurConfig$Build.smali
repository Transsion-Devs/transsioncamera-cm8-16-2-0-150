.class public Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Build"
.end annotation


# instance fields
.field private mFrontCamera:Z

.field private mHasFace:Z

.field private mSTBlurOn:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmFrontCamera(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->mFrontCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHasFace(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->mHasFace:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSTBlurOn(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->mSTBlurOn:Z

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->mSTBlurOn:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;
    .registers 3

    .line 60
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;-><init>(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig-IA;)V

    return-object v0
.end method

.method public frontCamera(Z)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->mFrontCamera:Z

    return-object p0
.end method

.method public hasFace(Z)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->mHasFace:Z

    return-object p0
.end method

.method public stBlurOn(Z)Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->mSTBlurOn:Z

    return-object p0
.end method
