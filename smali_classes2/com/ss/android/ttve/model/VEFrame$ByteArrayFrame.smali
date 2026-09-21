.class public Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;
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
    name = "ByteArrayFrame"
.end annotation


# instance fields
.field byteArray:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 160
    invoke-direct {p0}, Lcom/ss/android/ttve/model/VEFrame$FrameBase;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;->byteArray:[B

    return-void
.end method


# virtual methods
.method public getByteArray()[B
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/ss/android/ttve/model/VEFrame$ByteArrayFrame;->byteArray:[B

    return-object p0
.end method
