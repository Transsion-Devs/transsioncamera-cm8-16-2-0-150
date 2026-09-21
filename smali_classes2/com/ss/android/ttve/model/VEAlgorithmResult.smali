.class public Lcom/ss/android/ttve/model/VEAlgorithmResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;
    }
.end annotation


# static fields
.field private static final tags:[Ljava/lang/String;


# instance fields
.field private categoryItems:[Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;

.field private cluster_ids:[I

.field private clusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private errorCode:I

.field private faceCount:I

.field private faceFeatures:[F

.field private face_score:F

.field private featureByte:[B

.field private quality_score:F

.field private score:F

.field private sharpness_score:F

.field private similarityScore:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 23

    .line 20
    const-string v21, "tree"

    const-string v22, "others"

    const-string v1, "baby"

    const-string v2, "beach"

    const-string v3, "building"

    const-string v4, "car"

    const-string v5, "cartoon"

    const-string v6, "cat"

    const-string v7, "dog"

    const-string v8, "flower"

    const-string v9, "food"

    const-string v10, "group"

    const-string v11, "hill"

    const-string v12, "indoor"

    const-string v13, "lake"

    const-string v14, "nightscape"

    const-string v15, "selfie"

    const-string v16, "sky"

    const-string v17, "statue"

    const-string v18, "street"

    const-string v19, "sunset"

    const-string v20, "text"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->tags:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->errorCode:I

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .line 15
    sget-object v0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->tags:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCategoryItems()[Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->categoryItems:[Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;

    return-object p0
.end method

.method public getClusterIDs()[I
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->cluster_ids:[I

    return-object p0
.end method

.method public getClusters()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->clusters:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getErrorCode()I
    .registers 1

    .line 118
    iget p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->errorCode:I

    return p0
.end method

.method public getFaceCount()I
    .registers 1

    .line 126
    iget p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->faceCount:I

    return p0
.end method

.method public getFaceFeatures()[F
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->faceFeatures:[F

    return-object p0
.end method

.method public getFaceScore()F
    .registers 1

    .line 159
    iget p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->face_score:F

    return p0
.end method

.method public getFeatureByte()[B
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->featureByte:[B

    return-object p0
.end method

.method public getQualityScore()F
    .registers 1

    .line 168
    iget p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->quality_score:F

    return p0
.end method

.method public getScore()F
    .registers 1

    .line 150
    iget p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->score:F

    return p0
.end method

.method public getSharpnessScore()F
    .registers 1

    .line 177
    iget p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->sharpness_score:F

    return p0
.end method

.method public getSimilarityScore()F
    .registers 1

    .line 194
    iget p0, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->similarityScore:F

    return p0
.end method

.method public setCategoryItems([Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->categoryItems:[Lcom/ss/android/ttve/model/VEAlgorithmResult$C1CategoryItem;

    return-void
.end method

.method public setClusterIDs([I)V
    .registers 2

    .line 206
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->cluster_ids:[I

    return-void
.end method

.method public setClusters(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->clusters:Ljava/util/ArrayList;

    return-void
.end method

.method public setErrorCode(I)V
    .registers 2

    .line 122
    iput p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->errorCode:I

    return-void
.end method

.method public setFaceCount(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->faceCount:I

    return-void
.end method

.method public setFaceFeatures([F)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->faceFeatures:[F

    return-void
.end method

.method public setFaceScore(F)V
    .registers 2

    .line 164
    iput p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->face_score:F

    return-void
.end method

.method public setFeatureByte([B)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->featureByte:[B

    return-void
.end method

.method public setQualityScore(F)V
    .registers 2

    .line 173
    iput p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->quality_score:F

    return-void
.end method

.method public setScore(F)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->score:F

    return-void
.end method

.method public setSharpnessScore(F)V
    .registers 2

    .line 182
    iput p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->sharpness_score:F

    return-void
.end method

.method public setSimilarityScore(F)V
    .registers 2

    .line 198
    iput p1, p0, Lcom/ss/android/ttve/model/VEAlgorithmResult;->similarityScore:F

    return-void
.end method
