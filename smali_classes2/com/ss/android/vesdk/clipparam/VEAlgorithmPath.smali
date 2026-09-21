.class public Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static BEATES_FILE_BEATS_A0:I = 0x2

.field public static BEATES_FILE_CUSTOM:I = 0x3

.field public static BEATES_FILE_DEFAULT:I = 0x0

.field public static BEATES_FILE_SERVER_C:I = 0x1

.field public static INTMODE_ONSET:I = 0x0

.field public static MODE_SUCCESSIVELY:I = 0x1


# instance fields
.field downBeatsPath:Ljava/lang/String;

.field manMadePath:Ljava/lang/String;

.field mode:I

.field noStrengthBeatsPath:Ljava/lang/String;

.field onlineBeatsPath:Ljava/lang/String;

.field type:I

.field veBeatsPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->INTMODE_ONSET:I

    iput v0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->mode:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->type:I

    return-void
.end method


# virtual methods
.method public getDownBeatsPath()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->downBeatsPath:Ljava/lang/String;

    return-object p0
.end method

.method public getManMadePath()Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->manMadePath:Ljava/lang/String;

    return-object p0
.end method

.method public getMode()I
    .registers 1

    .line 64
    iget p0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->mode:I

    return p0
.end method

.method public getNoStrengthBeatsPath()Ljava/lang/String;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->noStrengthBeatsPath:Ljava/lang/String;

    return-object p0
.end method

.method public getOnlineBeatsPath()Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->onlineBeatsPath:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 72
    iget p0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->type:I

    return p0
.end method

.method public getVeBeatsPath()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->veBeatsPath:Ljava/lang/String;

    return-object p0
.end method

.method public setDownBeatsPath(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->downBeatsPath:Ljava/lang/String;

    return-void
.end method

.method public setManMadePath(Ljava/lang/String;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->manMadePath:Ljava/lang/String;

    return-void
.end method

.method public setMode(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->mode:I

    return-void
.end method

.method public setNoStrengthBeatsPath(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->noStrengthBeatsPath:Ljava/lang/String;

    return-void
.end method

.method public setOnlineBeatsPath(Ljava/lang/String;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->onlineBeatsPath:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->type:I

    return-void
.end method

.method public setVeBeatsPath(Ljava/lang/String;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->veBeatsPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->veBeatsPath:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1c

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " veBeatsPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->veBeatsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    :cond_1c
    iget-object v0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->downBeatsPath:Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " downBeatsPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->downBeatsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_36
    iget-object v0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->noStrengthBeatsPath:Ljava/lang/String;

    if-eqz v0, :cond_50

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " noStrengthBeatsPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->noStrengthBeatsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_50
    iget-object v0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->onlineBeatsPath:Ljava/lang/String;

    if-eqz v0, :cond_6a

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onlineBeatsPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->onlineBeatsPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_6a
    iget-object v0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->manMadePath:Ljava/lang/String;

    if-eqz v0, :cond_84

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " manMadePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->manMadePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    :cond_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/ss/android/vesdk/clipparam/VEAlgorithmPath;->type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
