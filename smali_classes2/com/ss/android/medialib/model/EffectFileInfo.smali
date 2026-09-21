.class public Lcom/ss/android/medialib/model/EffectFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/model/EffectFileInfo$Type;
    }
.end annotation


# instance fields
.field path:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/ss/android/medialib/model/EffectFileInfo;->type:I

    .line 30
    iput-object p2, p0, Lcom/ss/android/medialib/model/EffectFileInfo;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/ss/android/medialib/model/EffectFileInfo;->path:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/ss/android/medialib/model/EffectFileInfo;->type:I

    return p0
.end method
