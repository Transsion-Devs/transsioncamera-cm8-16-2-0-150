.class public final synthetic Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask$$ExternalSyntheticLambda0;->f$0:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask$$ExternalSyntheticLambda0;->f$0:Landroid/net/Uri;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {p0, p1}, Lcom/transsion/camera/manager/ThumbnailLoader$LoadThumbnailTask;->$r8$lambda$sSU99gfMTmTvwddEDsKXISGWDwA(Landroid/net/Uri;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
