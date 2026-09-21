.class public Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;
    }
.end annotation


# instance fields
.field private mFrontCamera:Z

.field private mHasFace:Z

.field private mSTBlurOn:Z


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->-$$Nest$fgetmFrontCamera(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;->mFrontCamera:Z

    .line 22
    invoke-static {p1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->-$$Nest$fgetmHasFace(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;->mHasFace:Z

    .line 23
    invoke-static {p1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;->-$$Nest$fgetmSTBlurOn(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;->mSTBlurOn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;-><init>(Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig$Build;)V

    return-void
.end method


# virtual methods
.method public isSTBlurOn()Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurConfig;->mSTBlurOn:Z

    return p0
.end method
