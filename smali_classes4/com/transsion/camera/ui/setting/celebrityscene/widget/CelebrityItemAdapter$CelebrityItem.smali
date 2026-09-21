.class public Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CelebrityItem"
.end annotation


# instance fields
.field private mCelebritySceneMode:Ljava/lang/String;

.field private mDrawableResource:I

.field private mTitleResource:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->mCelebritySceneMode:Ljava/lang/String;

    .line 106
    iput p2, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->mDrawableResource:I

    .line 107
    iput p3, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->mTitleResource:I

    return-void
.end method


# virtual methods
.method public getCelebritySceneMode()Ljava/lang/String;
    .registers 1

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->mCelebritySceneMode:Ljava/lang/String;

    return-object p0
.end method

.method public getDrawableResource()I
    .registers 1

    .line 115
    iget p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->mDrawableResource:I

    return p0
.end method

.method public getTitleResource()I
    .registers 1

    .line 119
    iget p0, p0, Lcom/transsion/camera/ui/setting/celebrityscene/widget/CelebrityItemAdapter$CelebrityItem;->mTitleResource:I

    return p0
.end method
