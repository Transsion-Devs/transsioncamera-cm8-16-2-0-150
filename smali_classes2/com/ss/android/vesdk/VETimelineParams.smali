.class public Lcom/ss/android/vesdk/VETimelineParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aTrimIn:[I

.field public aTrimOut:[I

.field private audioFileIndex:[I

.field public audioFilePaths:[Ljava/lang/String;

.field public enable:[Z

.field public rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

.field public speed:[D

.field public transitions:[Ljava/lang/String;

.field public vTrimIn:[I

.field public vTrimOut:[I

.field public videoFileIndex:[I

.field public videoFilePaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 6

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    array-length v0, p1

    .line 23
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    .line 25
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    const/4 v1, 0x0

    .line 26
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 28
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    const/4 v2, -0x1

    .line 29
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 31
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimIn:[I

    .line 32
    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([II)V

    .line 34
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimOut:[I

    .line 35
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 37
    new-array p1, v0, [D

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 38
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->transitions:[Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFilePaths:[Ljava/lang/String;

    .line 43
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    .line 44
    new-array p1, v0, [I

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFileIndex:[I

    .line 46
    new-array p1, v0, [Z

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->enable:[Z

    const/4 v2, 0x1

    .line 47
    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 49
    new-array p1, v0, [Lcom/ss/android/vesdk/ROTATE_DEGREE;

    iput-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    .line 50
    sget-object v2, Lcom/ss/android/vesdk/ROTATE_DEGREE;->ROTATE_NONE:Lcom/ss/android/vesdk/ROTATE_DEGREE;

    invoke-static {p1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_51
    if-ge v1, v0, :cond_5e

    .line 54
    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    aput v1, p1, v1

    .line 55
    iget-object p1, p0, Lcom/ss/android/vesdk/VETimelineParams;->audioFileIndex:[I

    aput v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_5e
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 6

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    :try_start_5
    iget-object v1, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_d

    :cond_c
    array-length v1, v1

    :goto_d
    if-ge v2, v1, :cond_be

    .line 151
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    if-eqz v3, :cond_22

    array-length v3, v3

    if-le v3, v2, :cond_22

    .line 152
    const-string v3, " videoFileIndex: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFileIndex:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    :cond_22
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    if-eqz v3, :cond_35

    array-length v3, v3

    if-le v3, v2, :cond_35

    .line 155
    const-string v3, " videoFilePath: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->videoFilePaths:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_35
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    if-eqz v3, :cond_48

    array-length v3, v3

    if-le v3, v2, :cond_48

    .line 158
    const-string v3, " vTrimIn: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimIn:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    :cond_48
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    if-eqz v3, :cond_5b

    array-length v3, v3

    if-le v3, v2, :cond_5b

    .line 161
    const-string v3, " vTrimOut: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->vTrimOut:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    :cond_5b
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimIn:[I

    if-eqz v3, :cond_6e

    array-length v3, v3

    if-le v3, v2, :cond_6e

    .line 164
    const-string v3, " aTrimIn: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimIn:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    :cond_6e
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimOut:[I

    if-eqz v3, :cond_81

    array-length v3, v3

    if-le v3, v2, :cond_81

    .line 167
    const-string v3, " aTrimOut: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->aTrimOut:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    :cond_81
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    if-eqz v3, :cond_94

    array-length v3, v3

    if-le v3, v2, :cond_94

    .line 170
    const-string v3, " speed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->speed:[D

    aget-wide v3, v3, v2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 172
    :cond_94
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->enable:[Z

    if-eqz v3, :cond_a7

    array-length v3, v3

    if-le v3, v2, :cond_a7

    .line 173
    const-string v3, " enable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->enable:[Z

    aget-boolean v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    :cond_a7
    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    if-eqz v3, :cond_ba

    array-length v3, v3

    if-le v3, v2, :cond_ba

    .line 176
    const-string v3, " rotate: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/vesdk/VETimelineParams;->rotate:[Lcom/ss/android/vesdk/ROTATE_DEGREE;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_ba} :catch_c3

    :cond_ba
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    .line 183
    :cond_be
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :catch_c3
    const-string p0, "Exception"

    return-object p0
.end method
