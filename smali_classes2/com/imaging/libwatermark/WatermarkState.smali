.class public final enum Lcom/imaging/libwatermark/WatermarkState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/WatermarkState$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaging/libwatermark/WatermarkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/imaging/libwatermark/WatermarkState;

.field public static final enum OFF_ALL:Lcom/imaging/libwatermark/WatermarkState;

.field public static final enum OFF_LOCATION:Lcom/imaging/libwatermark/WatermarkState;

.field public static final enum OFF_TIME:Lcom/imaging/libwatermark/WatermarkState;

.field public static final enum OFF_TIME_LOCATION:Lcom/imaging/libwatermark/WatermarkState;

.field public static final enum ON_ALL:Lcom/imaging/libwatermark/WatermarkState;


# direct methods
.method private static final synthetic $values()[Lcom/imaging/libwatermark/WatermarkState;
    .registers 5

    sget-object v0, Lcom/imaging/libwatermark/WatermarkState;->OFF_ALL:Lcom/imaging/libwatermark/WatermarkState;

    sget-object v1, Lcom/imaging/libwatermark/WatermarkState;->OFF_TIME_LOCATION:Lcom/imaging/libwatermark/WatermarkState;

    sget-object v2, Lcom/imaging/libwatermark/WatermarkState;->OFF_LOCATION:Lcom/imaging/libwatermark/WatermarkState;

    sget-object v3, Lcom/imaging/libwatermark/WatermarkState;->OFF_TIME:Lcom/imaging/libwatermark/WatermarkState;

    sget-object v4, Lcom/imaging/libwatermark/WatermarkState;->ON_ALL:Lcom/imaging/libwatermark/WatermarkState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/imaging/libwatermark/WatermarkState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 24
    new-instance v0, Lcom/imaging/libwatermark/WatermarkState;

    const-string v1, "OFF_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/WatermarkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/WatermarkState;->OFF_ALL:Lcom/imaging/libwatermark/WatermarkState;

    new-instance v0, Lcom/imaging/libwatermark/WatermarkState;

    const-string v1, "OFF_TIME_LOCATION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/WatermarkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/WatermarkState;->OFF_TIME_LOCATION:Lcom/imaging/libwatermark/WatermarkState;

    new-instance v0, Lcom/imaging/libwatermark/WatermarkState;

    const-string v1, "OFF_LOCATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/WatermarkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/WatermarkState;->OFF_LOCATION:Lcom/imaging/libwatermark/WatermarkState;

    new-instance v0, Lcom/imaging/libwatermark/WatermarkState;

    const-string v1, "OFF_TIME"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/WatermarkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/WatermarkState;->OFF_TIME:Lcom/imaging/libwatermark/WatermarkState;

    new-instance v0, Lcom/imaging/libwatermark/WatermarkState;

    const-string v1, "ON_ALL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/WatermarkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/WatermarkState;->ON_ALL:Lcom/imaging/libwatermark/WatermarkState;

    invoke-static {}, Lcom/imaging/libwatermark/WatermarkState;->$values()[Lcom/imaging/libwatermark/WatermarkState;

    move-result-object v0

    sput-object v0, Lcom/imaging/libwatermark/WatermarkState;->$VALUES:[Lcom/imaging/libwatermark/WatermarkState;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/imaging/libwatermark/WatermarkState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/imaging/libwatermark/WatermarkState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaging/libwatermark/WatermarkState;
    .registers 2

    const-class v0, Lcom/imaging/libwatermark/WatermarkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 33
    check-cast p0, Lcom/imaging/libwatermark/WatermarkState;

    return-object p0
.end method

.method public static values()[Lcom/imaging/libwatermark/WatermarkState;
    .registers 1

    sget-object v0, Lcom/imaging/libwatermark/WatermarkState;->$VALUES:[Lcom/imaging/libwatermark/WatermarkState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, [Lcom/imaging/libwatermark/WatermarkState;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .registers 3

    .line 26
    sget-object v0, Lcom/imaging/libwatermark/WatermarkState$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v1, 0x2

    if-eq p0, v1, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_16

    const/4 v1, 0x4

    if-eq p0, v1, :cond_15

    return v1

    :cond_15
    return v0

    :cond_16
    return v1

    :cond_17
    return v0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method
