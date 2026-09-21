.class public Lcom/ss/android/ttve/model/VEFrame$TextureFrame;
.super Lcom/ss/android/ttve/model/VEFrame$FrameBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/model/VEFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureFrame"
.end annotation


# instance fields
.field public context:Landroid/opengl/EGLContext;

.field public texID:I


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;I)V
    .registers 3

    .line 194
    invoke-direct {p0}, Lcom/ss/android/ttve/model/VEFrame$FrameBase;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;->context:Landroid/opengl/EGLContext;

    .line 196
    iput p2, p0, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;->texID:I

    return-void
.end method


# virtual methods
.method public getContext()Landroid/opengl/EGLContext;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;->context:Landroid/opengl/EGLContext;

    return-object p0
.end method

.method public getTexID()I
    .registers 1

    .line 204
    iget p0, p0, Lcom/ss/android/ttve/model/VEFrame$TextureFrame;->texID:I

    return p0
.end method
