.class public Lcom/bef/byteeffect/ImgporcUtils$InterpolationFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/byteeffect/ImgporcUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterpolationFlags"
.end annotation


# static fields
.field public static final INTER_LINEAR:I = 0x1

.field public static final INTER_NEAREST:I = 0x0

.field public static final WARP_INVERSE_MAP:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
