.class public interface abstract Lcom/transsion/hubsdk/interfaces/rms/ITranRmsAppmManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getETControl(Ljava/lang/String;)Z
.end method

.method public abstract getMEMCList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTargetFps(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract getTranAppmSystemInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTranGameList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sendEvent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setGameParam(Ljava/lang/String;Ljava/lang/String;)Z
.end method
