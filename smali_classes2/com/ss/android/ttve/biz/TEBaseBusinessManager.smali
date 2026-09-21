.class public Lcom/ss/android/ttve/biz/TEBaseBusinessManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EDITOR_TYPE_CANVAS:I = 0x1

.field public static final EDITOR_TYPE_DEFAULT:I


# instance fields
.field public editorType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/ss/android/ttve/biz/TEBaseBusinessManager;->editorType:I

    return-void
.end method


# virtual methods
.method public getFilterTrackIndex()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getTransitionTrackIndexs()[I
    .registers 1

    const/4 p0, 0x0

    .line 23
    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public getVideoTrackIndex()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
