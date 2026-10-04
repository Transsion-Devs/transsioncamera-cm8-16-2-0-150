.class public abstract Lcom/google/gson/internal/bind/TypeAdapters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter;
    }
.end annotation


# static fields
.field public static final ATOMIC_BOOLEAN:Lcom/google/gson/TypeAdapter;

.field public static final ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final ATOMIC_INTEGER:Lcom/google/gson/TypeAdapter;

.field public static final ATOMIC_INTEGER_ARRAY:Lcom/google/gson/TypeAdapter;

.field public static final ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final ATOMIC_INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final BIG_DECIMAL:Lcom/google/gson/TypeAdapter;

.field public static final BIG_INTEGER:Lcom/google/gson/TypeAdapter;

.field public static final BIT_SET:Lcom/google/gson/TypeAdapter;

.field public static final BIT_SET_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final BOOLEAN:Lcom/google/gson/TypeAdapter;

.field public static final BOOLEAN_AS_STRING:Lcom/google/gson/TypeAdapter;

.field public static final BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final BYTE:Lcom/google/gson/TypeAdapter;

.field public static final BYTE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final CALENDAR:Lcom/google/gson/TypeAdapter;

.field public static final CALENDAR_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final CHARACTER:Lcom/google/gson/TypeAdapter;

.field public static final CHARACTER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final CLASS:Lcom/google/gson/TypeAdapter;

.field public static final CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final CURRENCY:Lcom/google/gson/TypeAdapter;

.field public static final CURRENCY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final DOUBLE:Lcom/google/gson/TypeAdapter;

.field public static final ENUM_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final FLOAT:Lcom/google/gson/TypeAdapter;

.field public static final INET_ADDRESS:Lcom/google/gson/TypeAdapter;

.field public static final INET_ADDRESS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final INTEGER:Lcom/google/gson/TypeAdapter;

.field public static final INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

.field public static final JSON_ELEMENT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final LAZILY_PARSED_NUMBER:Lcom/google/gson/TypeAdapter;

.field public static final LOCALE:Lcom/google/gson/TypeAdapter;

.field public static final LOCALE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final LONG:Lcom/google/gson/TypeAdapter;

.field public static final SHORT:Lcom/google/gson/TypeAdapter;

.field public static final SHORT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final STRING:Lcom/google/gson/TypeAdapter;

.field public static final STRING_BUFFER:Lcom/google/gson/TypeAdapter;

.field public static final STRING_BUFFER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final STRING_BUILDER:Lcom/google/gson/TypeAdapter;

.field public static final STRING_BUILDER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final STRING_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final URI:Lcom/google/gson/TypeAdapter;

.field public static final URI_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final URL:Lcom/google/gson/TypeAdapter;

.field public static final URL_FACTORY:Lcom/google/gson/TypeAdapterFactory;

.field public static final UUID:Lcom/google/gson/TypeAdapter;

.field public static final UUID_FACTORY:Lcom/google/gson/TypeAdapterFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 72
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$1;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$1;-><init>()V

    .line 91
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS:Lcom/google/gson/TypeAdapter;

    .line 93
    const-class v1, Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 95
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$2;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$2;-><init>()V

    .line 147
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET:Lcom/google/gson/TypeAdapter;

    .line 149
    const-class v1, Ljava/util/BitSet;

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 151
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$3;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$3;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN:Lcom/google/gson/TypeAdapter;

    .line 175
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$4;

    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$4;-><init>()V

    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/google/gson/TypeAdapter;

    .line 192
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    .line 193
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 195
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$5;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$5;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE:Lcom/google/gson/TypeAdapter;

    .line 228
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 230
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$6;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$6;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT:Lcom/google/gson/TypeAdapter;

    .line 263
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    .line 264
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 266
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$7;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$7;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER:Lcom/google/gson/TypeAdapter;

    .line 290
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    .line 291
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 293
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$8;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$8;-><init>()V

    .line 308
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER:Lcom/google/gson/TypeAdapter;

    .line 309
    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 310
    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 312
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$9;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$9;-><init>()V

    .line 323
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN:Lcom/google/gson/TypeAdapter;

    .line 324
    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 325
    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_BOOLEAN_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 327
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$10;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$10;-><init>()V

    .line 358
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY:Lcom/google/gson/TypeAdapter;

    .line 359
    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 360
    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ATOMIC_INTEGER_ARRAY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 362
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$11;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$11;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/google/gson/TypeAdapter;

    .line 387
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$12;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$12;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/google/gson/TypeAdapter;

    .line 412
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$13;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$13;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/google/gson/TypeAdapter;

    .line 433
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$14;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$14;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER:Lcom/google/gson/TypeAdapter;

    .line 455
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    .line 456
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 458
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$15;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$15;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING:Lcom/google/gson/TypeAdapter;

    .line 480
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$16;

    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$16;-><init>()V

    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/google/gson/TypeAdapter;

    .line 503
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$17;

    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$17;-><init>()V

    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/google/gson/TypeAdapter;

    .line 526
    new-instance v1, Lcom/google/gson/internal/bind/TypeAdapters$18;

    invoke-direct {v1}, Lcom/google/gson/internal/bind/TypeAdapters$18;-><init>()V

    sput-object v1, Lcom/google/gson/internal/bind/TypeAdapters;->LAZILY_PARSED_NUMBER:Lcom/google/gson/TypeAdapter;

    .line 546
    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 548
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$19;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$19;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER:Lcom/google/gson/TypeAdapter;

    .line 565
    const-class v1, Ljava/lang/StringBuilder;

    .line 566
    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 568
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$20;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$20;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER:Lcom/google/gson/TypeAdapter;

    .line 585
    const-class v1, Ljava/lang/StringBuffer;

    .line 586
    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 588
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$21;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$21;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->URL:Lcom/google/gson/TypeAdapter;

    .line 606
    const-class v1, Ljava/net/URL;

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 608
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$22;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$22;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->URI:Lcom/google/gson/TypeAdapter;

    .line 630
    const-class v1, Ljava/net/URI;

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 632
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$23;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$23;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS:Lcom/google/gson/TypeAdapter;

    .line 654
    const-class v1, Ljava/net/InetAddress;

    .line 655
    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 657
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$24;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$24;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->UUID:Lcom/google/gson/TypeAdapter;

    .line 680
    const-class v1, Ljava/util/UUID;

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 682
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$25;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$25;-><init>()V

    .line 699
    invoke-virtual {v0}, Lcom/google/gson/TypeAdapter;->nullSafe()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY:Lcom/google/gson/TypeAdapter;

    .line 700
    const-class v1, Ljava/util/Currency;

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CURRENCY_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 702
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$26;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$26;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR:Lcom/google/gson/TypeAdapter;

    .line 777
    const-class v1, Ljava/util/Calendar;

    const-class v2, Ljava/util/GregorianCalendar;

    .line 778
    invoke-static {v1, v2, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactoryForMultipleTypes(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 780
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$27;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$27;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE:Lcom/google/gson/TypeAdapter;

    .line 817
    const-class v1, Ljava/util/Locale;

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 819
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$28;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$28;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;

    .line 953
    const-class v1, Lcom/google/gson/JsonElement;

    .line 954
    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    .line 1025
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$29;

    invoke-direct {v0}, Lcom/google/gson/internal/bind/TypeAdapters$29;-><init>()V

    sput-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/google/gson/TypeAdapterFactory;

    return-void
.end method

.method public static newFactory(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
    .registers 3

    .line 1045
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$30;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$30;-><init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public static newFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
    .registers 3

    .line 1057
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$31;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$31;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public static newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
    .registers 4

    .line 1074
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$32;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$32;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public static newFactoryForMultipleTypes(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
    .registers 4

    .line 1100
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$33;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$33;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)Lcom/google/gson/TypeAdapterFactory;
    .registers 3

    .line 1127
    new-instance v0, Lcom/google/gson/internal/bind/TypeAdapters$34;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$34;-><init>(Ljava/lang/Class;Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method
