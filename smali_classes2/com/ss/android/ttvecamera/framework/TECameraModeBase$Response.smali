.class public Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/framework/TECameraModeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Response"
.end annotation


# instance fields
.field errMsg:Ljava/lang/String;

.field isSuccess:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 2009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2010
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    .line 2011
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .registers 1

    .line 2018
    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .line 2022
    new-instance v0, Ljava/lang/Exception;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public isSuccess()Z
    .registers 1

    .line 2014
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{isSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ttvecamera/framework/TECameraModeBase$Response;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
