.class public interface abstract Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayerStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onChanged(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;I)V
.end method

.method public abstract onPlayEOF()V
.end method

.method public abstract onPlayProgress(Lcom/ss/android/ugc/cut_ui/core/ITemplatePlayer;J)V
.end method
