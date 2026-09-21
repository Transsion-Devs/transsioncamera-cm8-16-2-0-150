.class public Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;
    }
.end annotation


# instance fields
.field private final mAge:Ljava/lang/String;

.field private final mGender:Ljava/lang/String;

.field private final mMultiGender:Z

.field private final mMultiSkinColor:Z

.field private final mRace:Ljava/lang/String;

.field private final mSkinColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mMultiGender:Z

    .line 34
    iput-boolean p2, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mMultiSkinColor:Z

    .line 35
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mAge:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mGender:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mRace:Ljava/lang/String;

    .line 38
    iput-object p6, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mSkinColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public age()Ljava/lang/String;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mAge:Ljava/lang/String;

    return-object p0
.end method

.method public gender()Ljava/lang/String;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mGender:Ljava/lang/String;

    return-object p0
.end method

.method public multiGender()Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mMultiGender:Z

    return p0
.end method

.method public multiSkinColor()Z
    .registers 1

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mMultiSkinColor:Z

    return p0
.end method

.method public race()Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mRace:Ljava/lang/String;

    return-object p0
.end method

.method public skinColor()Ljava/lang/String;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mSkinColor:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeInfo{mMultiGender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mMultiGender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiSkinColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mMultiSkinColor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mAge:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mGender=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mGender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mRace=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mRace:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSkinColor=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;->mSkinColor:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
