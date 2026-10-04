.class Lcom/transsion/algorithm/STBlurConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/algorithm/STBlurConfig$Build;
    }
.end annotation


# instance fields
.field private mFrontCamera:Z

.field private mHasFace:Z

.field private mSTBlurOn:Z


# direct methods
.method private constructor <init>(Lcom/transsion/algorithm/STBlurConfig$Build;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/transsion/algorithm/STBlurConfig$Build;->-$$Nest$fgetmFrontCamera(Lcom/transsion/algorithm/STBlurConfig$Build;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurConfig;->mFrontCamera:Z

    .line 22
    invoke-static {p1}, Lcom/transsion/algorithm/STBlurConfig$Build;->-$$Nest$fgetmHasFace(Lcom/transsion/algorithm/STBlurConfig$Build;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/algorithm/STBlurConfig;->mHasFace:Z

    .line 23
    invoke-static {p1}, Lcom/transsion/algorithm/STBlurConfig$Build;->-$$Nest$fgetmSTBlurOn(Lcom/transsion/algorithm/STBlurConfig$Build;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/algorithm/STBlurConfig;->mSTBlurOn:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/algorithm/STBlurConfig$Build;Lcom/transsion/algorithm/STBlurConfig-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/algorithm/STBlurConfig;-><init>(Lcom/transsion/algorithm/STBlurConfig$Build;)V

    return-void
.end method


# virtual methods
.method public isFrontCamera()Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurConfig;->mFrontCamera:Z

    return p0
.end method

.method public isHasFace()Z
    .registers 1

    .line 31
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurConfig;->mHasFace:Z

    return p0
.end method

.method public isSTBlurOn()Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/transsion/algorithm/STBlurConfig;->mSTBlurOn:Z

    return p0
.end method
