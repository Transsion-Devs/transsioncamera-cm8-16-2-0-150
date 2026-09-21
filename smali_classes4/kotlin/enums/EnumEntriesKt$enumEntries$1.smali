.class final Lkotlin/enums/EnumEntriesKt$enumEntries$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $entries:[Ljava/lang/Enum;


# direct methods
.method constructor <init>([Ljava/lang/Enum;)V
    .registers 2

    iput-object p1, p0, Lkotlin/enums/EnumEntriesKt$enumEntries$1;->$entries:[Ljava/lang/Enum;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 30
    invoke-virtual {p0}, Lkotlin/enums/EnumEntriesKt$enumEntries$1;->invoke()[Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()[Ljava/lang/Enum;
    .registers 1

    .line 30
    iget-object p0, p0, Lkotlin/enums/EnumEntriesKt$enumEntries$1;->$entries:[Ljava/lang/Enum;

    return-object p0
.end method
