.class public interface abstract Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/nlerecorder/idAdapter/INLEId2VEIndexMapper$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract setTrackFilterIndex(Ljava/lang/String;IILjava/lang/String;)V
.end method

.method public abstract setTrackIndex(Ljava/lang/String;I)V
.end method

.method public abstract setTrackIndexForSlot(Ljava/lang/String;I)V
.end method
