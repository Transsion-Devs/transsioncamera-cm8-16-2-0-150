.class public Lcom/ss/android/vesdk/VERecordDraft;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public audioPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public durations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public videoPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 6

    .line 18
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecordDraft;->videoPaths:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v2

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v1

    .line 19
    :goto_10
    iget-object v3, p0, Lcom/ss/android/vesdk/VERecordDraft;->audioPaths:Ljava/util/List;

    if-eqz v3, :cond_1d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_1d

    :cond_1b
    move v3, v2

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v3, v1

    .line 20
    :goto_1e
    iget-object v4, p0, Lcom/ss/android/vesdk/VERecordDraft;->durations:Ljava/util/List;

    if-eqz v4, :cond_4b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_29

    goto :goto_4b

    :cond_29
    if-nez v0, :cond_4b

    if-eqz v3, :cond_2e

    goto :goto_4b

    .line 24
    :cond_2e
    iget-object v0, p0, Lcom/ss/android/vesdk/VERecordDraft;->durations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/ss/android/vesdk/VERecordDraft;->videoPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4b

    iget-object v0, p0, Lcom/ss/android/vesdk/VERecordDraft;->durations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lcom/ss/android/vesdk/VERecordDraft;->audioPaths:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne v0, p0, :cond_4b

    return v1

    :cond_4b
    :goto_4b
    return v2
.end method
