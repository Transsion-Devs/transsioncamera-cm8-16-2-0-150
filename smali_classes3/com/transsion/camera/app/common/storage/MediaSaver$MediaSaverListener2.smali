.class public abstract Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/storage/MediaSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MediaSaverListener2"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFileSaved(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener2;->onFileSaved(Landroid/net/Uri;I)V

    return-void
.end method

.method public abstract onFileSaved(Landroid/net/Uri;I)V
.end method
