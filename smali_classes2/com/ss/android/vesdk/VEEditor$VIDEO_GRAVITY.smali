.class public final enum Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIDEO_GRAVITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

.field public static final enum ALIGN_PARENT_BOTTOM:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

.field public static final enum ALIGN_PARENT_LEFT:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

.field public static final enum ALIGN_PARENT_RIGHT:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

.field public static final enum ALIGN_PARENT_TOP:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

.field public static final enum CENTER_HORIZONTAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

.field public static final enum CENTER_IN_PARENT:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

.field public static final enum CENTER_VERTICAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 541
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    const-string v1, "ALIGN_PARENT_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_LEFT:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 545
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    const-string v2, "ALIGN_PARENT_TOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_TOP:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 549
    new-instance v2, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    const-string v3, "ALIGN_PARENT_RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_RIGHT:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 553
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    const-string v4, "ALIGN_PARENT_BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->ALIGN_PARENT_BOTTOM:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 557
    new-instance v4, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    const-string v5, "CENTER_IN_PARENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->CENTER_IN_PARENT:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 561
    new-instance v5, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    const-string v6, "CENTER_HORIZONTAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->CENTER_HORIZONTAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 565
    new-instance v6, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    const-string v7, "CENTER_VERTICAL"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->CENTER_VERTICAL:Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    .line 537
    filled-new-array/range {v0 .. v6}, [Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 537
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;
    .registers 2

    .line 537
    const-class v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;
    .registers 1

    .line 537
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$VIDEO_GRAVITY;

    return-object v0
.end method
