.class public Lcom/ss/android/vesdk/clipparam/VEClipVideoFileInfoParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public bitrate:I

.field public codec:I

.field public duration:I

.field public fps:I

.field public height:I

.field public rotation:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    .line 46
    const-string p0, ""

    return-object p0
.end method
