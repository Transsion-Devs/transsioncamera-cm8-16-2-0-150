.class public final enum Lcom/imaging/libwatermark/BackgroundStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/imaging/libwatermark/BackgroundStyle$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/imaging/libwatermark/BackgroundStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/imaging/libwatermark/BackgroundStyle;

.field public static final enum ONE:Lcom/imaging/libwatermark/BackgroundStyle;

.field public static final enum TWO:Lcom/imaging/libwatermark/BackgroundStyle;

.field public static final enum WHITE:Lcom/imaging/libwatermark/BackgroundStyle;


# direct methods
.method private static final synthetic $values()[Lcom/imaging/libwatermark/BackgroundStyle;
    .registers 3

    sget-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->WHITE:Lcom/imaging/libwatermark/BackgroundStyle;

    sget-object v1, Lcom/imaging/libwatermark/BackgroundStyle;->ONE:Lcom/imaging/libwatermark/BackgroundStyle;

    sget-object v2, Lcom/imaging/libwatermark/BackgroundStyle;->TWO:Lcom/imaging/libwatermark/BackgroundStyle;

    filled-new-array {v0, v1, v2}, [Lcom/imaging/libwatermark/BackgroundStyle;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/imaging/libwatermark/BackgroundStyle;

    const-string v1, "WHITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/BackgroundStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->WHITE:Lcom/imaging/libwatermark/BackgroundStyle;

    new-instance v0, Lcom/imaging/libwatermark/BackgroundStyle;

    const-string v1, "ONE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/BackgroundStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->ONE:Lcom/imaging/libwatermark/BackgroundStyle;

    new-instance v0, Lcom/imaging/libwatermark/BackgroundStyle;

    const-string v1, "TWO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/imaging/libwatermark/BackgroundStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->TWO:Lcom/imaging/libwatermark/BackgroundStyle;

    invoke-static {}, Lcom/imaging/libwatermark/BackgroundStyle;->$values()[Lcom/imaging/libwatermark/BackgroundStyle;

    move-result-object v0

    sput-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->$VALUES:[Lcom/imaging/libwatermark/BackgroundStyle;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
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

    sget-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/imaging/libwatermark/BackgroundStyle;
    .registers 2

    const-class v0, Lcom/imaging/libwatermark/BackgroundStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 43
    check-cast p0, Lcom/imaging/libwatermark/BackgroundStyle;

    return-object p0
.end method

.method public static values()[Lcom/imaging/libwatermark/BackgroundStyle;
    .registers 1

    sget-object v0, Lcom/imaging/libwatermark/BackgroundStyle;->$VALUES:[Lcom/imaging/libwatermark/BackgroundStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 43
    check-cast v0, [Lcom/imaging/libwatermark/BackgroundStyle;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .registers 2

    .line 38
    sget-object v0, Lcom/imaging/libwatermark/BackgroundStyle$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    return v0
.end method
