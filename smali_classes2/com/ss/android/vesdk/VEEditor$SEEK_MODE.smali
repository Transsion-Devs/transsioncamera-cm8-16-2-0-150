.class public final enum Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEEK_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_REFRESH_MODE:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_REFRESH_MODE_FOECE:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_Forward:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_Accurate:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_Accurate_Clear:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_Clear:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_Forward:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_UpdateIn:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_UpdateInOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_UpdateOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LAST_Without_EffectAndSticker:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

.field public static final enum EDITOR_SEEK_FLAG_ToIframe:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 666
    new-instance v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const-string v1, "EDITOR_SEEK_FLAG_OnGoing"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_OnGoing:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 670
    new-instance v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const-string v2, "EDITOR_SEEK_FLAG_LastSeek"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LastSeek:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 674
    new-instance v2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const-string v3, "EDITOR_SEEK_FLAG_ToIframe"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_ToIframe:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 678
    new-instance v3, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v4

    const/4 v5, 0x4

    or-int/2addr v4, v5

    const-string v6, "EDITOR_SEEK_FLAG_LAST_UpdateIn"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateIn:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 682
    new-instance v4, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v6

    const/16 v7, 0x8

    or-int/2addr v6, v7

    const-string v8, "EDITOR_SEEK_FLAG_LAST_UpdateOut"

    invoke-direct {v4, v8, v5, v6}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 690
    new-instance v5, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v6

    or-int/lit8 v6, v6, 0x10

    const-string v8, "EDITOR_SEEK_FLAG_LAST_UpdateInOut"

    const/4 v9, 0x5

    invoke-direct {v5, v8, v9, v6}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_UpdateInOut:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 696
    new-instance v6, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/4 v8, 0x6

    const/16 v9, 0x80

    const-string v10, "EDITOR_SEEK_FLAG_Forward"

    invoke-direct {v6, v10, v8, v9}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_Forward:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 698
    new-instance v8, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v6}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v9

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v10

    or-int/2addr v9, v10

    const-string v10, "EDITOR_SEEK_FLAG_LAST_Forward"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v9}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_Forward:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    move-object v9, v8

    .line 703
    new-instance v8, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v10

    or-int/lit16 v10, v10, 0x100

    const-string v11, "EDITOR_SEEK_FLAG_LAST_Clear"

    invoke-direct {v8, v11, v7, v10}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_Clear:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    move-object v7, v9

    .line 708
    new-instance v9, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v10

    or-int/lit16 v10, v10, 0x280

    const-string v11, "EDITOR_SEEK_FLAG_LAST_Accurate"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_Accurate:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 710
    new-instance v10, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v1}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->getValue()I

    move-result v11

    or-int/lit16 v11, v11, 0x380

    const-string v12, "EDITOR_SEEK_FLAG_LAST_Accurate_Clear"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_Accurate_Clear:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 712
    new-instance v11, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/16 v12, 0xb

    const/16 v13, 0x400

    const-string v14, "EDITOR_REFRESH_MODE"

    invoke-direct {v11, v14, v12, v13}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_REFRESH_MODE:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 714
    new-instance v12, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/16 v13, 0xc

    const/16 v14, 0x6001

    const-string v15, "EDITOR_SEEK_FLAG_LAST_Without_EffectAndSticker"

    invoke-direct {v12, v15, v13, v14}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_SEEK_FLAG_LAST_Without_EffectAndSticker:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    .line 716
    new-instance v13, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    const/16 v14, 0xd

    const/high16 v15, 0x20000000

    move-object/from16 v16, v0

    const-string v0, "EDITOR_REFRESH_MODE_FOECE"

    invoke-direct {v13, v0, v14, v15}, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->EDITOR_REFRESH_MODE_FOECE:Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    move-object/from16 v0, v16

    .line 662
    filled-new-array/range {v0 .. v13}, [Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 720
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 721
    iput p3, p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;
    .registers 2

    .line 662
    const-class v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;
    .registers 1

    .line 662
    sget-object v0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->$VALUES:[Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    invoke-virtual {v0}, [Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    .line 725
    iget p0, p0, Lcom/ss/android/vesdk/VEEditor$SEEK_MODE;->mValue:I

    return p0
.end method
