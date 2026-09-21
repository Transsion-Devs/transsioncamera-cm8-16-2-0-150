.class public final enum Lcom/example/dispatcher_client/FlowBusType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum DATA_TRACK:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum FILE_UPLOAD:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum GENERATE:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum OFFLINE_MEETING_SUMMARY:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum REALTIME_MEETING_SUMMARY_PAUSE:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum REALTIME_MEETING_SUMMARY_PRE_CONNECT:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum REALTIME_MEETING_SUMMARY_RECORD:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum REALTIME_MEETING_SUMMARY_RESUME:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum REALTIME_MEETING_SUMMARY_STOP:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum YOUTUBE_SUMMARY:Lcom/example/dispatcher_client/FlowBusType;

.field public static final enum YOUTUBE_TITLE:Lcom/example/dispatcher_client/FlowBusType;


# direct methods
.method private static final synthetic $values()[Lcom/example/dispatcher_client/FlowBusType;
    .registers 11

    sget-object v0, Lcom/example/dispatcher_client/FlowBusType;->FILE_UPLOAD:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v1, Lcom/example/dispatcher_client/FlowBusType;->YOUTUBE_SUMMARY:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v2, Lcom/example/dispatcher_client/FlowBusType;->YOUTUBE_TITLE:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v3, Lcom/example/dispatcher_client/FlowBusType;->GENERATE:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v4, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_PRE_CONNECT:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v5, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_RECORD:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v6, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_RESUME:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v7, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_PAUSE:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v8, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_STOP:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v9, Lcom/example/dispatcher_client/FlowBusType;->OFFLINE_MEETING_SUMMARY:Lcom/example/dispatcher_client/FlowBusType;

    sget-object v10, Lcom/example/dispatcher_client/FlowBusType;->DATA_TRACK:Lcom/example/dispatcher_client/FlowBusType;

    filled-new-array/range {v0 .. v10}, [Lcom/example/dispatcher_client/FlowBusType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 29
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "FILE_UPLOAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->FILE_UPLOAD:Lcom/example/dispatcher_client/FlowBusType;

    .line 34
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "YOUTUBE_SUMMARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->YOUTUBE_SUMMARY:Lcom/example/dispatcher_client/FlowBusType;

    .line 37
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "YOUTUBE_TITLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->YOUTUBE_TITLE:Lcom/example/dispatcher_client/FlowBusType;

    .line 42
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "GENERATE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->GENERATE:Lcom/example/dispatcher_client/FlowBusType;

    .line 48
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "REALTIME_MEETING_SUMMARY_PRE_CONNECT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_PRE_CONNECT:Lcom/example/dispatcher_client/FlowBusType;

    .line 49
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "REALTIME_MEETING_SUMMARY_RECORD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_RECORD:Lcom/example/dispatcher_client/FlowBusType;

    .line 50
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "REALTIME_MEETING_SUMMARY_RESUME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_RESUME:Lcom/example/dispatcher_client/FlowBusType;

    .line 51
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "REALTIME_MEETING_SUMMARY_PAUSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_PAUSE:Lcom/example/dispatcher_client/FlowBusType;

    .line 52
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "REALTIME_MEETING_SUMMARY_STOP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->REALTIME_MEETING_SUMMARY_STOP:Lcom/example/dispatcher_client/FlowBusType;

    .line 54
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "OFFLINE_MEETING_SUMMARY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->OFFLINE_MEETING_SUMMARY:Lcom/example/dispatcher_client/FlowBusType;

    .line 55
    new-instance v0, Lcom/example/dispatcher_client/FlowBusType;

    const-string v1, "DATA_TRACK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/example/dispatcher_client/FlowBusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->DATA_TRACK:Lcom/example/dispatcher_client/FlowBusType;

    invoke-static {}, Lcom/example/dispatcher_client/FlowBusType;->$values()[Lcom/example/dispatcher_client/FlowBusType;

    move-result-object v0

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->$VALUES:[Lcom/example/dispatcher_client/FlowBusType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/example/dispatcher_client/FlowBusType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/example/dispatcher_client/FlowBusType;
    .registers 2

    const-class v0, Lcom/example/dispatcher_client/FlowBusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 57
    check-cast p0, Lcom/example/dispatcher_client/FlowBusType;

    return-object p0
.end method

.method public static values()[Lcom/example/dispatcher_client/FlowBusType;
    .registers 1

    sget-object v0, Lcom/example/dispatcher_client/FlowBusType;->$VALUES:[Lcom/example/dispatcher_client/FlowBusType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 57
    check-cast v0, [Lcom/example/dispatcher_client/FlowBusType;

    return-object v0
.end method
