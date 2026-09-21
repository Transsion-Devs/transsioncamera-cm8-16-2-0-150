.class public interface abstract Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getTrackFilterIndex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getTrackIndex(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getTrackIndexBySlot(Ljava/lang/String;)Ljava/lang/Integer;
.end method
