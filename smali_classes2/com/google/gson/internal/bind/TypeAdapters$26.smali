.class Lcom/google/gson/internal/bind/TypeAdapters$26;
.super Lcom/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 703
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 2

    .line 703
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$26;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object p0

    return-object p0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Calendar;
    .registers 12

    .line 713
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne p0, v0, :cond_d

    .line 714
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p0, 0x0

    return-object p0

    .line 717
    :cond_d
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    const/4 p0, 0x0

    move v1, p0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    .line 724
    :goto_17
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v7, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v7, :cond_84

    .line 725
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I

    move-result v7

    .line 727
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_8e

    goto :goto_74

    :sswitch_33
    const-string v8, "hourOfDay"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_74

    :cond_3c
    const/4 v9, 0x5

    goto :goto_74

    :sswitch_3e
    const-string v8, "month"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_74

    :cond_47
    const/4 v9, 0x4

    goto :goto_74

    :sswitch_49
    const-string v8, "year"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_74

    :cond_52
    const/4 v9, 0x3

    goto :goto_74

    :sswitch_54
    const-string v8, "second"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto :goto_74

    :cond_5d
    const/4 v9, 0x2

    goto :goto_74

    :sswitch_5f
    const-string v8, "minute"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_68

    goto :goto_74

    :cond_68
    const/4 v9, 0x1

    goto :goto_74

    :sswitch_6a
    const-string v8, "dayOfMonth"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_74

    :cond_73
    move v9, p0

    :goto_74
    packed-switch v9, :pswitch_data_a8

    goto :goto_17

    :pswitch_78
    move v4, v7

    goto :goto_17

    :pswitch_7a
    move v2, v7

    goto :goto_17

    :pswitch_7c
    move v1, v7

    goto :goto_17

    :pswitch_7e
    move v6, v7

    goto :goto_17

    :pswitch_80
    move v5, v7

    goto :goto_17

    :pswitch_82
    move v3, v7

    goto :goto_17

    .line 750
    :cond_84
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 751
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    return-object v0

    nop

    :sswitch_data_8e
    .sparse-switch
        -0x4667c053 -> :sswitch_6a
        -0x400459ec -> :sswitch_5f
        -0x3604bb8c -> :sswitch_54
        0x38883d -> :sswitch_49
        0x6342280 -> :sswitch_3e
        0x3ab9c2c1 -> :sswitch_33
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_82
        :pswitch_80
        :pswitch_7e
        :pswitch_7c
        :pswitch_7a
        :pswitch_78
    .end packed-switch
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3

    .line 703
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$26;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .registers 5

    if-nez p2, :cond_6

    .line 757
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 760
    :cond_6
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 761
    const-string p0, "year"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/4 p0, 0x1

    .line 762
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 763
    const-string p0, "month"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/4 p0, 0x2

    .line 764
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 765
    const-string p0, "dayOfMonth"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/4 p0, 0x5

    .line 766
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 767
    const-string p0, "hourOfDay"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 p0, 0xb

    .line 768
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 769
    const-string p0, "minute"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 p0, 0xc

    .line 770
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 771
    const-string p0, "second"

    invoke-virtual {p1, p0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    const/16 p0, 0xd

    .line 772
    invoke-virtual {p2, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 773
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method
