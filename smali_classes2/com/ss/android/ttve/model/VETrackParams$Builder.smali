.class public Lcom/ss/android/ttve/model/VETrackParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/model/VETrackParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field params:Lcom/ss/android/ttve/model/VETrackParams;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Lcom/ss/android/ttve/model/VETrackParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams;-><init>(Lcom/ss/android/ttve/model/VETrackParams$1;)V

    iput-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/ttve/model/VETrackParams;)V
    .registers 2

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$100(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 160
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams;->access$102(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    .line 162
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$100(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSeqIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$400(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 229
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams;->access$402(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    .line 231
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$400(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSeqOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 4

    .line 251
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$500(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 252
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams;->access$502(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    .line 254
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$500(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->sizes:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$1000(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 318
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->sizes:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams;->access$1002(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    .line 320
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->sizes:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$1000(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSpeed(D)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 5

    .line 274
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$600(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 275
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams;->access$602(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    .line 277
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$600(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTrimIn(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$200(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 183
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams;->access$202(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    .line 185
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$200(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTrimOut(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$300(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 206
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/ss/android/ttve/model/VETrackParams;->access$302(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    .line 208
    :cond_12
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # getter for: Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;
    invoke-static {v0}, Lcom/ss/android/ttve/model/VETrackParams;->access$300(Lcom/ss/android/ttve/model/VETrackParams;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/ss/android/ttve/model/VETrackParams;
    .registers 1

    .line 329
    iget-object p0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    return-object p0
.end method

.method public setExtFlag(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3

    .line 307
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->extFlag:I
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$902(Lcom/ss/android/ttve/model/VETrackParams;I)I

    return-object p0
.end method

.method public setLayer(I)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->layer:I
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$702(Lcom/ss/android/ttve/model/VETrackParams;I)I

    return-object p0
.end method

.method public setPaths(Ljava/util/List;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/ttve/model/VETrackParams$Builder;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->paths:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$102(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setSeqIns(Ljava/util/List;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ss/android/ttve/model/VETrackParams$Builder;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->seqIns:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$402(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setSeqOuts(Ljava/util/List;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ss/android/ttve/model/VETrackParams$Builder;"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->seqOuts:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$502(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setSpeeds(Ljava/util/List;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/ss/android/ttve/model/VETrackParams$Builder;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->speeds:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$602(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setTrackPriority(Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->trackPriority:Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$802(Lcom/ss/android/ttve/model/VETrackParams;Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;)Lcom/ss/android/ttve/model/VETrackParams$TrackPriority;

    return-object p0
.end method

.method public setTrimIns(Ljava/util/List;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ss/android/ttve/model/VETrackParams$Builder;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->trimIns:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$202(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public setTrimOuts(Ljava/util/List;)Lcom/ss/android/ttve/model/VETrackParams$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/ss/android/ttve/model/VETrackParams$Builder;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/ss/android/ttve/model/VETrackParams$Builder;->params:Lcom/ss/android/ttve/model/VETrackParams;

    # setter for: Lcom/ss/android/ttve/model/VETrackParams;->trimOuts:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/ss/android/ttve/model/VETrackParams;->access$302(Lcom/ss/android/ttve/model/VETrackParams;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method
