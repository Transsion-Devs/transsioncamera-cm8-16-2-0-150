.class public Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final DEFAULT_AGE:Ljava/lang/String; = "-1"

.field private static final DEFAULT_GENDER:Ljava/lang/String; = "1"

.field private static final DEFAULT_RACE:Ljava/lang/String; = "5"

.field private static final DEFAULT_SKIN_COLOR:Ljava/lang/String; = "4"


# instance fields
.field private mAge:Ljava/lang/String;

.field private mGender:Ljava/lang/String;

.field private mMultiGender:Z

.field private mMultiSkinColor:Z

.field private mRace:Ljava/lang/String;

.field private mSkinColor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "-1"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mAge:Ljava/lang/String;

    .line 91
    const-string v0, "1"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mGender:Ljava/lang/String;

    .line 93
    const-string v0, "5"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mRace:Ljava/lang/String;

    .line 95
    const-string v0, "4"

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mSkinColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public age(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mAge:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;
    .registers 8

    .line 128
    new-instance v0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mMultiGender:Z

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mMultiSkinColor:Z

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mAge:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mGender:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mRace:Ljava/lang/String;

    iget-object v6, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mSkinColor:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo;-><init>(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public gender(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mGender:Ljava/lang/String;

    return-object p0
.end method

.method public multiGender(Z)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;
    .registers 2

    .line 98
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mMultiGender:Z

    return-object p0
.end method

.method public multiSkinColor(Z)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;
    .registers 2

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mMultiSkinColor:Z

    return-object p0
.end method

.method public race(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mRace:Ljava/lang/String;

    return-object p0
.end method

.method public skinColor(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/AttributeInfo$Builder;->mSkinColor:Ljava/lang/String;

    return-object p0
.end method
