.class public Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;
.super Lcom/ss/android/ttve/model/VEFrame$FrameBase;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttve/model/VEFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArrayFrame"
.end annotation


# instance fields
.field intArray:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    .line 176
    invoke-direct {p0}, Lcom/ss/android/ttve/model/VEFrame$FrameBase;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;->intArray:[I

    return-void
.end method


# virtual methods
.method public getIntArray()[I
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame$IntArrayFrame;->intArray:[I

    return-object p0
.end method
