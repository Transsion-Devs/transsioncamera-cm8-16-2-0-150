.class public Lcom/ss/android/vesdk/VEAnimationID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALPHA:I = 0x1

.field public static final BEAT:I = 0xb

.field public static final DANCE:I = 0xc

.field public static final MAX:I = 0xd

.field public static final MOVEDOWN:I = 0x6

.field public static final MOVELEFT:I = 0x5

.field public static final MOVERIGHT:I = 0x4

.field public static final MOVEUP:I = 0x7

.field public static final NONE:I = 0x0

.field public static final ROTATION:I = 0x9

.field public static final SHAKE:I = 0x8

.field public static final TWINKLE:I = 0xa

.field public static final ZOOMIN:I = 0x3

.field public static final ZOOMOUT:I = 0x2


# instance fields
.field private value:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/ss/android/vesdk/VEAnimationID;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/ss/android/vesdk/VEAnimationID;
    .registers 2

    .line 28
    new-instance v0, Lcom/ss/android/vesdk/VEAnimationID;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEAnimationID;-><init>()V

    .line 29
    iput p0, v0, Lcom/ss/android/vesdk/VEAnimationID;->value:I

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 1

    .line 38
    iget p0, p0, Lcom/ss/android/vesdk/VEAnimationID;->value:I

    return p0
.end method
